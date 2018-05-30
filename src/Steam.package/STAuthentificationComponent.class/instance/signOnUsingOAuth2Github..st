rendering
signOnUsingOAuth2Github: aCallbackUrl
	
	self responsePanel: (STZnSSOSeasideGithubOAuth2DemoPanel new application: self; yourself).
	self responsePanel gotoSignOn: aCallbackUrl