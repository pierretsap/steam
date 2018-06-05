initializing
search
	results := (STMemoryStore currentStore queryAll: STExampleGame ) select: [ :each | each title asUppercase includesSubstring: title asUppercase ]