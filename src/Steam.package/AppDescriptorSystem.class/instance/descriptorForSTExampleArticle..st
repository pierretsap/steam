as yet unclassified
descriptorForSTExampleArticle: aDescriptor
	aDescriptor table: (self tableNamed: 'STEXAMPLEARTICLE').
	#(#id #title #date #category #content #email) do: [:each|
		aDescriptor directMappingFor: each.]