resources
oauthConsumerData
|ap sap|
ap := application .
sap := self application .
1haltOnce. 
"this is ambiguous.."
self flag: #smell.

	^ STZnOAuth2ConsumerData 
		key: (self application preferenceAt: #oauth2GithubClientId)
		secret: (self application preferenceAt: #oauth2GithubClientSecret)
		redirectUrl: (self application preferenceAt: #oauth2GithubRedirectUrl)