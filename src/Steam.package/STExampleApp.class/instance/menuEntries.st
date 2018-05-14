accessing
menuEntries
	
	^ { STListAction
			on: STExampleGame
			title: 'Games'.
			
		STExampleGame new title: 'LOLO'.
		
		STUpdateAction 
			on: (STExampleGame new title: 'Update me')
			title: 'Update me'.
			
		STSearchAction
			on: STExampleGameSearch new
			title: 'Search Games'.}