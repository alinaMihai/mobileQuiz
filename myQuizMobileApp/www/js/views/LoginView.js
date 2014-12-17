// Login View
// =============

// Includes file dependencies
define(["jquery", "backbone", "text!views/templates/LoginTemplate.html"], function($, Backbone, LoginTemplate) {

    // Extends Backbone.View
    var LoginView = Backbone.View.extend({


        // The View Constructor
        initialize: function() {},

        // Renders all of the Login models on the UI
        render: function() {
            this.$el.empty();

            // Renders the view's template inside of the current listview element
            this.$el.append(_.template(LoginTemplate, {
                type: "Login"
            }));

            // Maintains chainability
            return this;
        }
    });

    // Returns the View class
    return LoginView;
});