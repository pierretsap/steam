as yet unclassified
tableForSTEXAMPLEARTICLE: aTable
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.

	aTable createFieldNamed: 'email' type: (platform varchar: 250).
	aTable createFieldNamed: 'category' type: (platform varchar: 250).
	aTable createFieldNamed: 'content' type: (platform text).
	aTable createFieldNamed: 'title' type: (platform varchar: 250).
	aTable createFieldNamed: 'date' type: (platform date).
