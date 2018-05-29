actions
signOnUsingOAuth2Google: aCallbackUrl
	self responsePanel: STZnSSOSeasideGoogleOAuth2DemoPanel new.
	self responsePanel gotoSignOn: aCallbackUrl.