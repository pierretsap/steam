as yet unclassified
descriptorForSTGameCategory: aDescriptor
	aDescriptor table: (self tableNamed: 'STGAMECATEGORY').
	#(#id #title) do: [:each|
		aDescriptor directMappingFor: each.]