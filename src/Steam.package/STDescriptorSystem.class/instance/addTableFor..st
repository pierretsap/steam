initialization
addTableFor: aClass 

	| newTable |	
	newTable := self databaseTableClass new.
	newTable name: aClass name asUppercase.
	tables at: aClass name asUppercase put: newTable.
	
	(newTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aClass basicNew magritteDescription children do: [ :each |
		| class |
		class := each propertyAt: #STObjectClass ifAbsent: [ nil ].
		class 
			ifNotNil: [ 
				newTable 
					addForeignKeyFrom: (newTable createFieldNamed: each accessor readSelector type: platform int4) 
					to: ((self tableNamed: class asString asUppercase ) fieldNamed: 'id') ] 
			ifNil: [ 
				newTable
					createFieldNamed: each accessor readSelector
					type: (each convertTypeFor: platform) ] ].


	newTable postInitializeIn: self.
	self deferentialSetSchema: newTable.