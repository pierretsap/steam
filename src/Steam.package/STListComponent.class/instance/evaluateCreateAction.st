actions
evaluateCreateAction

	| newObject |
	newObject := self call: (self renderCreateForm: self listAccessor new).
	newObject ifNotNil: [ 
		application add: newObject ].