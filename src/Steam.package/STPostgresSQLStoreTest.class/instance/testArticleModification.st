tests
testArticleModification
	| extractedCollection |
	article title: 'title1'.
	store save: article.
	session := store session.
	session login.
	session beginUnitOfWork.
	extractedCollection := store query: article class with: 'title1'.
	self assert: extractedCollection size equals: 1.
	self assert: extractedCollection first title equals: 'title1'.
	
	extractedCollection first title: 'title2'.
	session update: extractedCollection first.
"	session commitUnitOfWork.
	session logout."
	
	extractedCollection := nil.
	
	extractedCollection := store query: article class with: 'title2'.
	self assert: extractedCollection size equals: 1.
	self assert: extractedCollection first title equals: 'title2'.
	
	store delete: extractedCollection first