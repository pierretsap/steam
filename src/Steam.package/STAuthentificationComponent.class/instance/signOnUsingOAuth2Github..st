rendering
signOnUsingOAuth2Github: aCallbackUrl
	
	self responsePanel: (STZnSSOSeasideGithubOAuth2 new application: application ; yourself).
	self responsePanel gotoSignOn: aCallbackUrl