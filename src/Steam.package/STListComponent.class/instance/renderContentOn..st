rendering
renderContentOn: html
	| report |
	html heading: self listAccessor title.

	(self isLoggedIn and: [ self isReadOnly not ]) ifTrue: [
		html form: [	
			html tbsButton 
					bePrimary;
					beSubmit;
					callback: [ self evaluateCreateAction ];
					with: [
						html tbsGlyphIcon iconPencil.
						html text: self createActionTitle ] ] ].

	html break.

	report := TBSMagritteReport
		rows: self elements
		description: ((self listAccessor instanceMagritteDescription) select: #visibleInReport).
	report showStriped: true.
	report showBordered: false.
	report tableEmpty: 'No ', self listAccessor title.
	
	self isLoggedIn ifTrue: [
		report addColumn: (MACommandColumn new
			addCommandOn: self selector: #view: text: 'View';
			addCommandOn: self selector: #edit: text: 'Edit';
			addCommandOn: self selector: #delete: text: 'Delete';
			yourself) ].
		
	html render: report