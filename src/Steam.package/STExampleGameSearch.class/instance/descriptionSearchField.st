acessing-magritte
descriptionSearchField
	<magritteDescription>
	^ MAStringDescription new
		label: 'Title';
		accessor: #title;
		beSearchField;
		comment: 'Search for gamezz';
		beRequired;
		yourself