visiting
visitToManyRelationDescription: aMAToManyRelationDescription
	
	self
		renderRowForDescription: aMAToManyRelationDescription
		withDataCell: [
			(object readUsing: aMAToManyRelationDescription)
				do: [ :each | html render: each ]
				separatedBy: [ html break ] ]