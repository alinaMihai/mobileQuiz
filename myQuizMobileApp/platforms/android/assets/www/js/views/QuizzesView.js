// Quizzes View
// =============

// Includes file dependencies
define(["jquery", "backbone", "text!views/templates/QuizzesTemplate.html"], function($, Backbone, QuizzesTemplate) {

    // Extends Backbone.View
    var QuizzesView = Backbone.View.extend({
        // The View Constructor
        initialize: function() {},
        render: function(results) {
            var self = this;
            this.$el.empty();
            self.$el.append(_.template(QuizzesTemplate, {
                "data": results,
                "type": "Quizzes"
            }));

            // Maintains chainability
            return this;
        }
    });

    // Returns the View class
    return QuizzesView;
});