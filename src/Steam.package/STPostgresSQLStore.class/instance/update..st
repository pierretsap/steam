storing
update: anObject
	session login.
	session inUnitOfWorkDo: [ session save: anObject ].
	session logout
	