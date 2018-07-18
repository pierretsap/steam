initialization
createATableFor: class
	| classInsetance result titleTypeDict |
	classInsetance := class basicNew.
	result := ('tableFor{1}: aTable
' format: {class asString asUppercase}).
	result := result, '	(aTable createFieldNamed: ''id'' type: platform serial) bePrimaryKey.

'.
	titleTypeDict := classInsetance instanceVariablesDescriptionType.
	titleTypeDict keysAndValuesDo: [ :k :v | result := result, (self convertToDatabaseTitle: k type: v) ].
	
	self class compile: result