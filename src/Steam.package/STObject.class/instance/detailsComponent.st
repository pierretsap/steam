components
detailsComponent

	^ (STDetailsComponent onObject: self)
		addDecoration: (TBSMagritteFormDecoration
			buttons: { 
				#answer -> self class createAction cancelTitle });
		yourself