adding
addTable: newTable to: each descriptor: descriptor
	newTable
		addForeignKeyFrom: (newTable createFieldNamed: each accessor readSelector type: descriptor platform int4) 
		to: ((descriptor tableNamed: self asString asUppercase ) fieldNamed: 'id')