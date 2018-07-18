initialization
initialize

	super initialize.
	appComonent applicationClasses do: [ :class | 
		self createAClassModelFor: class.
		self createADescriptorFor: class.
		self createATableFor: class ]