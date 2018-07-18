as yet unclassified
tableForSTEXAMPLEGAME: aTable
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.

	aTable createFieldNamed: 'title' type: (platform varchar: 250).
	aTable createFieldNamed: 'rating' type: (platform integer).
	aTable addForeignKeyFrom: (aTable createFieldNamed: 'category' type: platform int4) to: ((self tableNamed: 'STGAMECATEGORY') fieldNamed: 'id').