rendering
signOnUsingOAuth2Google: aCallbackUrl

	self responsePanel: (STZnSSOSeasideGoogleOAuth2 new application: application ; yourself).
	self responsePanel gotoSignOn: aCallbackUrl