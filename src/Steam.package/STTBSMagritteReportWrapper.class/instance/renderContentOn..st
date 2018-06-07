rendering
renderContentOn: html
	html render: self report.
	
	html div tbsPullRight ;
		class: 'reoprt-actions'; 
		with: [
			html anchor
				class: 'btn' ;
				callback: [ self delete ] ;
				with: [ html tbsGlyphIcon iconTrash ] ]