rendering
renderContentOn: html

	html heading
		level3 ;
		with: 'Github user data'.
		
	userData isNil
		ifTrue: [ 
			html strong: 'No user data'.
			^ self ].

	self renderJSONDict: userData on: html.