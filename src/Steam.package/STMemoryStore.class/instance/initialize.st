initialization
initialize
	"self initialize"

	super initialize.
	self class currentStore: self.
	store := Dictionary new.
	
	"Adding some Games for example :"
	{STExampleGame new
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
		title: 'Pro Evolution Soccer ''18'} do: [ :e | self save: e ]