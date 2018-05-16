rendering
renderContentOn: html

"		html tbsRow: [  "
		html tbsColumn style: 'position : fixed; bottom: 25px; width : 100%'; with: [ 
"			html heading level: 5; with: 'Footer here'."
			html horizontalRule.
			html tbsColumn with: [
				html tbsNav style: 'text-align: justify' ; with: [
					html tbsNavItem style: 'display: inline-block;' ; with: [ html anchor url: 'Example App'; with: 'Home' ].
					html tbsNavItem style: 'display: inline-block;' ; with: [ html anchor: 'Profile' ].
					html tbsNavItem style: 'display: inline-block;' ; with: [ html anchor: 'About' ].
					html tbsNavItem style: 'display: inline-block;' ; with: [ html anchor: 'Help' ].
					elements do: [ :elem | html tbsNavItem style: 'display: inline-block;' ; with: [ html anchor: elem element ] ]]]].
