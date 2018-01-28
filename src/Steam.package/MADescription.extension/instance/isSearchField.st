*Steam
isSearchField

	^ self propertyAt: #searchField ifAbsent: [ self class defaultIsSearchField ]