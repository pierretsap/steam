initialization
initialize
	super initialize.
	elements := OrderedCollection new.
	elements add: (STFooterElementComponent element: 'A title').
	elements add: (STFooterElementComponent element: 'elem2').