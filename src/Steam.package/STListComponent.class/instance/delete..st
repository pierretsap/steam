actions
delete: anObject
	(self confirmError: ('Do you want remove this {1} ?' format: { anObject asString }))
		ifTrue: [ application delete: anObject ]