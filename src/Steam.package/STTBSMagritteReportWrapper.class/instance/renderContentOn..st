rendering
renderContentOn: html
	html anchor 
		class: (selection ifEmpty: ['hidden'] );
		callback: [ self delete ];
		with: [ 
			html div tbsPullLeft;
				class: 'reoprt-actions'; 
				with: [
					self flag: #smell.
					html tbsButton
						beSubmit;
						beDanger;
						beExtraSmall;
						"Why this callback isn't working ?"
						callback: [  self delete ];
						with: [ html tbsGlyphIcon iconTrash ] ] ]