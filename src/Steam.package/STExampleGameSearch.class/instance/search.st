initializing
search
	results := { 
		STExampleGame new
			category: 'Action';
			title: 'Metal Gear 2'.
		STExampleGame new
			category: 'Sport';
			title: 'Grid 2'.
		STExampleGame new
			category: 'Sport';
			title: 'Rocket League'.
		STExampleGame new
			category: 'Combat';
			title: 'Street Fighter'.
		STExampleGame new
			category: 'Sport';
			title: 'Need for speed'.
		STExampleGame new
			category: 'Sport';
			title: 'Pro Evolution Soccer ''18'.
		
		 } select: [ :each | each title includesSubstring: title ]