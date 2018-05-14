acessing-magritte
descriptionSearchField
	<magritteDescription>
	^ MAStringDescription new
		label: 'Title';
		accessor: #title;
		beSearchField;
		beRequired;
		yourself