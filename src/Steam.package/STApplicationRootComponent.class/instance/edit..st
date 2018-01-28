actions
edit: anObject

	| oldMain |
	oldMain := main component.
	self show: (anObject updateComponent
		onAnswer: [ self show: oldMain ];
		yourself)