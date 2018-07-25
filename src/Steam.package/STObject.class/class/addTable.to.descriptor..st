adding
addTable: newTable to: each descriptor: descriptor
	newTable
		createFieldNamed: each accessor readSelector
		type: (each convertTypeFor: descriptor platform)