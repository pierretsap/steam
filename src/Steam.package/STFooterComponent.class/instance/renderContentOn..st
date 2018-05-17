rendering
renderContentOn: html

"		html tbsRow: [  "
		html tbsColumn class: 'footer'; style: 'position : fixed; bottom: 25px; width : 100%'; with: [ 
"			html heading level: 5; with: 'Footer here'."
			html horizontalRule.
			html tbsNavbar  with: [
				html tbsNav style: 'text-align: center;' ; class: 'footer-elements-container'; with: [
					elements do: [ :elem | elem renderContentOn: html ]]]].