*Steam
visibleInDetails

	^ self propertyAt: #visibleInDetails ifAbsent: [ self class defaultVisibleInDetails ]