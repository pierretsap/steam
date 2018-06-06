descriptions
descriptionDate
	<magritteDescription>
	^ MADateDescription new
		label: 'Date';
		accessor: #date;
		priority: 40;
		addCondition: [ :value | value <= Date today ];
		beSearchField;
		yourself