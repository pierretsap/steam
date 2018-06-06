initialization
initialize
	"self initialize"

	super initialize.
	self class currentStore: self.
	store := Dictionary new.