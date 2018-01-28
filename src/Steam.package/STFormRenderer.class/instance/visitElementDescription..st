visiting
visitElementDescription: aDescription

	aDescription visibleInForm ifFalse: [ ^ self ].

	^ super visitElementDescription: aDescription