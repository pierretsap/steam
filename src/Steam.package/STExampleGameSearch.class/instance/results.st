initializing
results

	^ { STExampleGame new
			title: 'Metal Gear 2'.
		
		STExampleGame new
			title: 'Pro Evolution Soccer ''18' } select: [ :each | each title includesSubstring: title ]