visiting
visitMemoDescription: aMAMemoDescription

	self
		renderRowForDescription: aMAMemoDescription
		withDataCell: [
			(object readUsing: aMAMemoDescription) lines
				do: [ :each | html render: each ]
				separatedBy: [ html break ] ]