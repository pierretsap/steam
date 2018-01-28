rendering
renderRowForDescription: aDescription withDataCell: aCellRenderer

	aDescription visibleInDetails ifFalse: [ ^ self ].

	self renderFieldName: aDescription.
	self renderFieldUsing: aCellRenderer.