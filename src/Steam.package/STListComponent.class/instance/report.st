accessing
report
	| description checkbox |
	report ifNotNil: [ ^ report ].
	report := TBSMagritteReport rows: self elements.
	report showStriped: true.
	report showBordered: false.
	report tableEmpty: 'No ' , self listAccessor title.
	report showBatchFirstLast: true.
	report showHover: true.
	report batchSize: self reportBatchSize.

	self isLoggedIn
		ifTrue: [ report addColumn: (checkbox := STMACheckboxColumn new accessor: #isSelected) ].

	description := (self listAccessor instanceMagritteDescriptionOnApplication: appComponent) select: #visibleInReport.
	description asContainer do: [ :each | report addColumnDescription: each ].

	self isLoggedIn
		ifTrue: [
			report addColumn: (STCommand new executeAll: self).
			checkbox label: 
				(wrapper
					appComponent: appComponent;
					selection: report columns first selection;
					report: report;
					yourself) ].
	^ report