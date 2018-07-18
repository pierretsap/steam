accessing
initializeTable: aTable
	| desbribedClass |

	desbribedClass := aTable classModel describedClass.
	
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	desbribedClass basicNew magritteDescription childrenDo: [ :each |
		aTable
			createFieldNamed: each name
			type: (platform text) ]