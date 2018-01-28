components
renderCreateForm: anObject

	^ anObject asComponent
		addDecoration: (TBSMagritteFormDecoration
			buttons: { 
				#save -> self listAccessor createAction acceptTitle.
				#cancel -> self listAccessor createAction cancelTitle });
		yourself