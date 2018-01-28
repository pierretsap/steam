rendering
renderSearchOn: html

	| searchFields |
	searchFields := self model magritteDescription children
		select: [ :each | each isSearchField ].
	
	html form: [	
		html tbsInputGroup: [ 
			searchFields ifEmpty: [ self error: 'No search fields declared for ', self model title ].
			searchFields size = 1
				ifTrue: [ 
					html textInput
						tbsFormControl
						value: (self model readUsing: searchFields anyOne);
						callback: [ :input | self model write: input using: searchFields anyOne ].
					html tbsInputGroupButton: [ 
						html tbsButton
							beDefault;
							beSubmit;
							tbsPullRight;
							callback: [ self doSearch ];
							with: [
								html tbsGlyphIcon iconSearch.
								html space.
								html text: 'Search' ] ] ]
				ifFalse: [ self halt: 'Not implemented yet' ] ] ].