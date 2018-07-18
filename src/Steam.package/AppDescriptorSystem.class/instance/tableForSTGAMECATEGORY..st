as yet unclassified
tableForSTGAMECATEGORY: aTable
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.

	aTable createFieldNamed: 'title' type: (platform varchar: 250).
