( function( api ) {

	// Extends our custom "xhub-pro" section.
	api.sectionConstructor['xhub-pro'] = api.Section.extend( {

		// No events for this type of section.
		attachEvents: function () {},

		// Always make the section active.
		isContextuallyActive: function () {
			return true;
		}
	} );

} )( wp.customize );
