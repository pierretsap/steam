initialization
newSession

	session := GlorpSession new.
	session accessor: (DatabaseAccessor forLogin: self class login).
	session system: descriptorSystem.
	^ session