actions
gotoSignOn: aCallbackUrl
	"Redirect to the Google sigon webpage."
	
	| state |

	oauthSession := (STZnOAuth2Session google: self oauthConsumerData)
		yourself.
		
	state := String streamContents: [ :stream |
		stream 
			nextPutAll: aCallbackUrl asString ;
			nextPut: $? ;
			nextPutAll: aCallbackUrl queryString ].

	self requestContext
		redirectTo: (oauthSession authenticationUrlWithState: state) ;
		respond