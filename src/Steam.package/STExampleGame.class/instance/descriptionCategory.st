descriptions
descriptionCategory
	<magritteDescription>
	^ MASingleOptionDescription new
		label: 'Category';
		accessor: #category;
		priority: 100;
		options: ((steamApplication queryAll: STGameCategory) collect: [ :e | e categoryName ]);
		comment: 'Select a category';
		beSorted;
"		addCondition: [ :v | v isNotNil ] labelled: 'You have to create a new category';"
		beRequired;
		yourself