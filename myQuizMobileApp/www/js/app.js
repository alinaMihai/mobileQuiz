// Sets the require.js configuration for your application.
require.config( {
      // 3rd party script alias names
      paths: {
            // Core Libraries
            "jquery": "libs/jquery-min",
            "jquerymobile": "libs/jquerymobile/jquery.mobile-1.4.2.min",
            "underscore": "libs/lodash",
            "backbone": "libs/backbone-min",
            "text":"libs/text",
			"handlebars":"libs/handlebars.runtime-v2.0.0"
      },

      // Sets the configuration for your third party scripts that are not AMD compatible
      shim: {

            "backbone": {
                  "deps": [ "underscore", "jquery" ],
                  "exports": "Backbone"  //attaches "Backbone" to the window object
            },
            'underscore': {
                exports: '_'
            },
			"handlebars":{
			  exports:"Handlebars"
			}
      } // end Shim Configuration
} );

// Includes File Dependencies
require([ "jquery", "backbone", "routers/mobileRouter" ], function( $, Backbone, Mobile ) {
	
	$( document ).on( "mobileinit",
		// Set up the "mobileinit" handler before requiring jQuery Mobile's module
		function() {
			// Prevents all anchor click handling including the addition of active button state and alternate link bluring.
			$.mobile.linkBindingEnabled = false;

			// Disabling this will prevent jQuery Mobile from handling hash changes
			$.mobile.hashListeningEnabled = false;
			
			// Remove page from DOM when it's being replaced
			//$('div[data-role="page"]').on('pagehide', function (event, ui) {
			//	$(event.currentTarget).remove();
			//});
		}
	);

	require( [ "jquerymobile" ], function() {
		// Instantiates a new Backbone.js Mobile Router
		this.router = new Mobile();
	});
} );
