descriptions
descriptionTags
	<magritteDescription>
	^ MAMultipleOptionDescription new
		label: 'Tags';
		accessor: #tags;
		priority: 20;
		beSearchField;
		options: ([steamApplication queryAll: STArticleTag] on: Error do: [ nil ] );
		componentClass: MAMultiselectListComponent;
		propertyAt: #STObjectClass put: STArticleTag;
		yourself