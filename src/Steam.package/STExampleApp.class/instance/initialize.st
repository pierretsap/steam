rendering
initialize
	"self initialize"

	super initialize.
	login := STExampleLogin on: self.	
	
	self save: ((STGameCategory onSteamApplication: self)
		categoryName: 'Cool';
		yourself).

	self save: ((STGameCategory onSteamApplication: self)
		categoryName: 'Not Cool';
		yourself).
	
	"Adding some Games for example :"
	{(STExampleGame onSteamApplication: self)
		category: 'Action';
		title: 'Metal Gear 2'.
	(STExampleGame onSteamApplication: self)
		category: 'Sport';
		title: 'Grid 2'.
	(STExampleGame onSteamApplication: self)
		category: 'Sport';
		title: 'Rocket League'.
	(STExampleGame onSteamApplication: self)
		category: 'Combat';
		title: 'Street Fighter'.
	(STExampleGame onSteamApplication: self)
		category: 'Sport';
		title: 'Need for speed'.
	(STExampleGame onSteamApplication: self)
		category: 'Sport';
		title: 'Pro Evolution Soccer ''18'} do: [ :e | self save: e ]