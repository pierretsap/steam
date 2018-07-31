storing
save: anObject
	| session |

	session := self session.
	session login.
	session inUnitOfWorkDo: [ 
		session register: anObject ].
	session logout.
	