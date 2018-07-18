as yet unclassified
classModelForSTExampleArticle: aClassModel
	#(#id #title #date #category #content #email) do: [ :each |
		aClassModel newAttributeNamed: each ]