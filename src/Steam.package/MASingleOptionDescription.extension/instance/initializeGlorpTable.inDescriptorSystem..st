*Steam-store
initializeGlorpTable: aDatabaseTable inDescriptorSystem: aSTDescriptorSystem 
	
	| targetTable |
	targetTable := (aSTDescriptorSystem descriptorFor: self stObjectClass) table.
	
	aDatabaseTable
		addForeignKeyFrom: (aDatabaseTable createFieldNamed: targetTable name , '_ID_FK' type: aSTDescriptorSystem platform int4) 
		to: (targetTable fieldNamed: 'id')