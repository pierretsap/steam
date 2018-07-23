initialization
initializeClassModel: aClassModel
	self allClasses do: [ :class | 
		class basicNew magritteDescription children do: [ :each | 
			| referencedClass |
			referencedClass := each propertyAt: #STObjectClass ifAbsent: [ nil ].
			referencedClass 
				ifNotNil: [
					aClassModel newAttributeNamed: each accessor readSelector type: referencedClass ]
				ifNil: [ 
					aClassModel newAttributeNamed: each accessor readSelector ] ] ]