querying
queryAll: aClass
	
	^ store at: aClass ifAbsent: [ #() ]