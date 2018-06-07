rendering
initialize
	"self initialize"

	| actionCategory sportsCategory combatCategory |
	super initialize.
	login := STExampleLogin on: self.	
	
	actionCategory := (STGameCategory onSteamApplication: self)
		categoryName: 'Action';
		yourself.
	sportsCategory := (STGameCategory onSteamApplication: self)
		categoryName: 'Sports';
		yourself.
	combatCategory := (STGameCategory onSteamApplication: self)
		categoryName: 'Combat';
		yourself.
	self save: actionCategory.
	self save: sportsCategory.
	self save: combatCategory.
	
	"Adding some Games for example :"
	{(STExampleGame onSteamApplication: self)
		category: actionCategory;
		title: 'Metal Gear 2';
		rating: 7.
	(STExampleGame onSteamApplication: self)
		category: sportsCategory;
		title: 'Grid 2';
		rating: 10.
	(STExampleGame onSteamApplication: self)
		category: sportsCategory;
		title: 'Rocket League';
		rating: 9.
	(STExampleGame onSteamApplication: self)
		category: combatCategory;
		title: 'Street Fighter';
		rating: 8.
	(STExampleGame onSteamApplication: self)
		category: sportsCategory;
		title: 'Need for speed';
		rating: 9.
	(STExampleGame onSteamApplication: self)
		category: sportsCategory;
		title: 'Pro Evolution Soccer ''18';
		rating: 7} do: [ :e | self save: e ]