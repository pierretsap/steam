accessing
propertyDescription
	
	^ (object magritteDescription children detect: [ :each | 
		each accessor selector = property ])