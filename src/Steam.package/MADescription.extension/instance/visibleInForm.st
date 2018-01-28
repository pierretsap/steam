*Steam
visibleInForm

	^ self propertyAt: #visibleInForm ifAbsent: [ self class defaultVisibleInForm ]