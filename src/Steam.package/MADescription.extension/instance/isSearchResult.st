*Steam
isSearchResult

	^ self propertyAt: #searchResult ifAbsent: [ self class defaultIsSearchResult ]