initialization
initialize
	super initialize.
	
	self session addFilter: (STGlorpSessionFilter onApplication: self).
	
	logins := OrderedCollection new.
	main := STPage appComponent: self.
	self storeInitialization