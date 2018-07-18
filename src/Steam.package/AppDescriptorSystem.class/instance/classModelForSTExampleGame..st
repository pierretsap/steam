as yet unclassified
classModelForSTExampleGame: aClassModel
	#(#id #title #category #rating) do: [ :each |
		aClassModel newAttributeNamed: each ]