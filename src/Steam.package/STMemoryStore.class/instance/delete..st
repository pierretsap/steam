storing
delete: anObject
	
	| classCollection |
	classCollection := store at: anObject class ifAbsent: [ ^ self ].
	classCollection remove: anObject