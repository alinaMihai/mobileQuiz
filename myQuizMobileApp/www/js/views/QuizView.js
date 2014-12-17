// Quizzes View
// =============

// Includes file dependencies
define(["jquery", "backbone", "text!views/templates/QuizTemplate.html"], function($, Backbone, QuizTemplate) {

    // Extends Backbone.View
    var QuizView = Backbone.View.extend({
        // The View Constructor
        initialize: function() {

            // The render method is called when Category Models are added to the Collection
            //this.collection.on( "added", this.render, this );
        },


        // Renders all of the Category models on the UI
        render: function(options) {
            var self = this;
            this.$el.empty();

            var questions = options[0];
            self.$el.append(_.template(QuizTemplate, {
                "questions": questions,
                "type": options[1]
            }));

            // Maintains chainability
            return this;
        }
    });

    // Returns the View class
    return QuizView;
});