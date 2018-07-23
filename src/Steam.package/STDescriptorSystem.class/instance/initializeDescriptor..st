initialization
initializeDescriptor: aDescriptor

	| desbribedClass |
	desbribedClass := aDescriptor classModel describedClass.
	aDescriptor table: (self tableNamed: desbribedClass name asUppercase).

	aDescriptor directMappingFor: 'id'.
	desbribedClass basicNew magritteDescription children do: [ :each |
		| class |
		class := each propertyAt: #STObjectClass ifAbsent: [ nil ].
		class 
			ifNotNil: [
				(aDescriptor newMapping: OneToOneMapping)
					attributeName: each accessor readSelector;
					referenceClass: class. ] 
			ifNil: [ 
				aDescriptor directMappingFor: each accessor readSelector ] ]