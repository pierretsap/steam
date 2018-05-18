accessing
ssoSession
	
	^ self applicationSession
		attributeAt: self class
		ifAbsentPut: [ self newOAuth2SessionWithData: (ZnOAuth2ConsumerData
				key: key
				secret: secret
				redirectUrl: redirectUrl) ].