// Mobile Router
// =============

// Includes file dependencies
define(["jquery", "backbone", "models/QuizzesModel",
    "views/LoginView", "views/QuizzesView", "views/QuizView"
], function($, Backbone, QuizzesModel, LoginView, QuizzesView, QuizView) {

    //utility function
    $.fn.serializeObject = function() {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function() {
            if (o[this.name] !== undefined) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };

    // Extends Backbone.Router
    var myRouter = Backbone.Router.extend({

        // The Router constructor
        initialize: function() {
            this.quizzesModel = new QuizzesModel();
            this.loginView = new LoginView();
            this.quizzesView = new QuizzesView();
            this.quizView = new QuizView();
            this.testId = 0;
            this.currentQuiz = "";
            this.candidateTests = [];
            // Tells Backbone to start watching for hashchange events
            Backbone.history.start();
        },

        // Backbone.js Routes
        routes: {
            // When there is no hash bang on the url, the login method is called
            "": "login",
            "login": "login",
            // When #test? is on the url, the takeTest method is called
            "test?:quizId": "takeTest",
            "home": "home"
        },

        changePage: function(view, options) {
            // render view

            if (options) {
                view.render.call(view, options);
            } else {
                view.render();
            }
            // add page element
            $(view.el).attr('data-role', 'page');

            // append page to body
            $("body").empty();
            $("body").append(view.$el);

            // change page
            $.mobile.changePage($(view.el), {
                transition: "flip",
                reverse: false,
                changeHash: false,
                allowSamePageTransition: true
            });
        },

        // Login method
        login: function() {
            var self = this;
            //load the login page
            this.changePage(self.loginView);
            $("#loginForm").bind("submit", function(e) {
                $.mobile.loading('show');

                var loginRequestURL = "http://192.168.0.100:8080/QuizAppHibernateA/rest/service/candidate/login/jsonp";
                e.preventDefault();
                $.ajax({
                    cache: true,
                    url: loginRequestURL,
                    data: $('#loginForm').serialize(),
                    type: "POST",
                    contentType: "application/x-www-form-urlencoded",
                    dataType: "jsonp"
                }).fail(function() {
                    $.mobile.loading('hide');
                    self.notifyUser("Wrong username or password. Please try again", function() {});
                }).done(function(loginInfo) {
                    self.quizzesModel.fetchQuizzes(loginInfo.id).done(function(data) {
                        if (data) {
                            tests = data.test;
                            self.changePage(self.quizzesView, tests);
                            $.mobile.loading('hide');
                            self.candidateTests = (typeof(tests.length) == "number") ? tests : [tests];
                            $("ul[data-role='listview']").find("a").bind("click", function() {
                                self.testId = $(this).data("test");
                                self.currentQuiz = $(this).html();
                            });
                        } else {
                            self.changePage(self.quizzesView);
                            $.mobile.loading('hide');
                        }
                    });
                });
            });

        },
        takeTest: function(quizId) {
            $.mobile.loading('show');
            var self = this;
            //start test
            this.quizzesModel.startTest(this.testId);
            //update candidateTests array
            this.updateCandidateTests(this.candidateTests, this.testId);

            // fetch quiz questions
            this.quizzesModel.fetchQuiz(quizId).done(function(data) {
                var questions = data.question;
                self.changePage(self.quizView, [questions, self.currentQuiz]);
                $.mobile.loading('hide');

                $("#quizForm").bind("submit", function(e) {
                    $.mobile.loading('show');
                    e.preventDefault();
                    var candidateAnswers = $("#quizForm").serializeObject();
                    //process quiz
                    self.quizzesModel.fetchCorrectAnswers(quizId).done(function(answers) {
                        var quizAnswers = answers.answer;
                        self.processQuiz(candidateAnswers, quizAnswers);

                    });
                });
            });
        },
        home: function() {
            var self = this;
            var callback = function() {
                self.changePage(self.quizzesView, self.candidateTests);
            };
            var message = "Are you sure? If you are in a middle of a test you cannot retake it";
            this.notifyUser(message, callback);
        },
        updateCandidateTests: function(tests, testId) {
            tests = (tests.length > 1) ? tests : [tests];
            var index = 0;

            for (i in tests) {
                if (parseInt(tests[i].id) === testId) {
                    index = parseInt(i);
                    break;
                }
            }
            delete this.candidateTests[index];
            this.candidateTests = this.candidateTests.filter(function(a) {
                return typeof a !== 'undefined';
            });

        },
        processQuiz: function(candidateAnswers, correctAnswers) {
            var increment = 100 / correctAnswers.length;
            var noCorrect = 0;
            correctAnswers.forEach(function(answer, i) {
                for (i in candidateAnswers) {
                    if (parseInt(answer.id) == parseInt(candidateAnswers[i])) {
                        noCorrect++;
                        break;
                    }
                }
            });
            var result = (noCorrect * increment);
            var message = "Your result is " + result + "%";
            $.mobile.loading('hide');
            this.notifyUser(message, function() {});
            //save test
            this.quizzesModel.endTest(this.testId, result);
            this.changePage(this.quizzesView, this.candidateTests);
        },
        notifyUser: function(message, callback) {
            if (!!navigator.notification) {
                navigator.notification.alert(
                    message, // message
                    callback, // callback
                    'Notice', // title
                    'OK' // buttonName
                );
            } else {
                var ok = confirm(message);
                if (ok) callback();
            }
        }


    });

    // Returns the Router class
    return myRouter;
});