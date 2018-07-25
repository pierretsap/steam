initialization
addTableFor: aClass 

	| newTable |	
	newTable := self databaseTableClass new.
	newTable name: aClass name asUppercase.
	tables at: aClass name asUppercase put: newTable.
	
	(newTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aClass basicNew magritteDescription children do: [ :each |
		| class |
		class := each propertyAt: #STObjectClass ifAbsent: [ STObject ].
		class addTable: newTable to: each descriptor: self ].

	newTable postInitializeIn: self.
	self deferentialSetSchema: newTable.