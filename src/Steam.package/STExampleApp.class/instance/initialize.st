rendering
initialize
	"self initialize"

	super initialize.
	login := STExampleLogin on: self.	
	store := STMemoryStore on: self.