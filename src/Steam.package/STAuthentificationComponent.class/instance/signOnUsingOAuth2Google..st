rendering
signOnUsingOAuth2Google: aCallbackUrl

	self responsePanel: 
		(STZnSSOSeasideGoogleOAuth2DemoPanel new
			application: self;
			yourself).
	self responsePanel gotoSignOn: aCallbackUrl