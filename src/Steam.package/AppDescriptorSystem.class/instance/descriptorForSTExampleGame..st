as yet unclassified
descriptorForSTExampleGame: aDescriptor
	aDescriptor table: (self tableNamed: 'STEXAMPLEGAME').
	#(#id #title #category #rating) do: [:each|
		aDescriptor directMappingFor: each.]