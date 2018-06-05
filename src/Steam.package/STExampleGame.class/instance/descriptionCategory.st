descriptions
descriptionCategory
	<magritteDescription>
	^ MASingleOptionDescription new
		label: 'Category';
		accessor: #category;
		priority: 100;
		options: ((STMemoryStore currentStore queryAll: STGameCategory) collect: [ :e | e categoryName ]);
		comment: 'Select a category';
		beSorted;
		beRequired;
"		addCondition: [ :v | v isNotNil ] labelled: 'You have to create a new category';"
		yourself