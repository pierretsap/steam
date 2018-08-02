execution
executeAll: component
	| res |
	res := STMACommandColumn new.
	self class subclasses do: [ :each | ((each on: res) execute: component) ].
	^ res