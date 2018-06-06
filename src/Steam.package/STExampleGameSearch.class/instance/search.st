initializing
search
	results := (STMemoryStore currentStore queryAll: STExampleGame)
		select: [ :each | each title asUppercase includesSubstring: searchValue asUppercase ]