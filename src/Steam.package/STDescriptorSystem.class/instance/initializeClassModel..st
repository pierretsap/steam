initialization
initializeClassModel: aClassModel
	self allClasses do: [ :class | 
		class basicNew magritteDescription children do: [ :each | 
			| referencedClass |
			referencedClass := each propertyAt: #STObjectClass ifAbsent: [ STObject ].
			referencedClass addClassModel: aClassModel to: each ] ]