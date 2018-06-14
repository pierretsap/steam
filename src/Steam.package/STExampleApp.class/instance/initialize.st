rendering
initialize
	"self initialize"

	| actionCategory sportsCategory combatCategory adventureCategory |
	super initialize.
	login := STExampleLogin on: self.
	menuEntries := { 
		STListAction on: STExampleGame title: 'Games'.
		STListAction on: STExampleArticles title: 'Articles'.
		STListAction on: STGameCategory title: 'Game Categories'.
		STSearchAction on: (STExampleGameSearch onSteamApplication: self) title: 'Search Games'.}.
	
	{actionCategory := (STGameCategory onSteamApplication: self)
		categoryName: 'Action';
		yourself.
	sportsCategory := (STGameCategory onSteamApplication: self)
		categoryName: 'Sports';
		yourself.
	combatCategory := (STGameCategory onSteamApplication: self)
		categoryName: 'Combat';
		yourself.
	adventureCategory := (STGameCategory onSteamApplication: self)
		categoryName: 'Adventure';
		yourself.} do: [ :each | self save: each ].
	
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
		rating: 7.
	(STExampleGame onSteamApplication: self)
		category: adventureCategory;
		title: 'Dark Souls';
		rating: 9.
	(STExampleGame onSteamApplication: self)
		category: adventureCategory;
		title: 'Minecraft';
		rating: 7.
	(STExampleGame onSteamApplication: self)
		category: actionCategory;
		title: 'Fortnite';
		rating: 8.
	(STExampleGame onSteamApplication: self)
		category: actionCategory;
		title: 'Overwatch';
		rating: 7.
	(STExampleGame onSteamApplication: self)
		category: actionCategory;
		title: 'Portal';
		rating: 9.} do: [ :e | self save: e ]