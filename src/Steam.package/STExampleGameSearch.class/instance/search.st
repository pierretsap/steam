initializing
search
	results := { STExampleGame new
			category: 'Action';
			title: 'Metal Gear 2'.
		
		STExampleGame new
			category: 'Sport';
			title: 'Pro Evolution Soccer ''18' } select: [ :each | each title includesSubstring: title ]