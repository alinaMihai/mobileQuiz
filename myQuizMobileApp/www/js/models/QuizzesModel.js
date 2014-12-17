define(["jquery", "backbone"], function($, Backbone) {
    var QuizzesModel = Backbone.Model.extend({
        rootUrl: "http://192.168.0.100:8080/QuizAppHibernateA/rest/service/quizzes/",
        fetchCorrectAnswers: function(quizId) {
            var self = this;
            return $.ajax({
                cache: true,
                url: self.rootUrl + "answers/jsonp",
                type: "POST",
                dataType: "jsonp",
                data: {
                    "quizId": quizId
                },
                success: function(results) {
                    console.log("success");
                }
            });
        },
        fetchQuizzes: function(candidateId) {
            var self = this;
            return $.ajax({
                cache: true,
                url: self.rootUrl + candidateId + "/jsonp",
                data: {
                    "candidateId": candidateId
                },
                type: "POST",
                dataType: "jsonp",
                success: function(results) {
                    console.log("success");
                }
            });

        },
        fetchQuiz: function(quizId) {
            var self = this;
            return $.ajax({
                cache: true,
                url: self.rootUrl + "query/jsonp",
                data: {
                    "quizId": quizId
                },
                type: "POST",
                dataType: "jsonp",
                success: function(results) {
                    console.log("success");
                }
            });
        },
        startTest: function(testId) {
            var self = this;
            return $.ajax({
                cache: true,
                url: self.rootUrl + "update/jsonp",
                data: {
                    "testId": testId
                },
                type: "POST",
                dataType: "jsonp",
                success: function(results) {
                    console.log("success");
                }
            });
        },
        endTest: function(testId, score) {
            var self = this;
            return $.ajax({
                cache: true,
                url: self.rootUrl + "updateEndTest/jsonp",
                type: "POST",
                data: {
                    "testId": testId,
                    "score": score
                },
                dataType: "jsonp",
                success: function(results) {
                    console.log("success");
                }
            });
        }

    });
    return QuizzesModel;
});