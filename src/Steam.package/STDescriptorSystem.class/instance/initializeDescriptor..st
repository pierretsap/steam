accessing
initializeDescriptor: aDescriptor

	| desbribedClass |
	desbribedClass := aDescriptor classModel describedClass.
	aDescriptor table: (self tableNamed: desbribedClass name asUppercase).
	
	aDescriptor directMappingFor: 'id'.
	desbribedClass basicNew magritteDescription children do: [ :each |
		aDescriptor directMappingFor: each accessor readSelector ]