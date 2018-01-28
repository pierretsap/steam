rendering
renderContentOn: html
	html heading: self model title.
	
	self renderSearchOn: html.
	self renderResultsOn: html.