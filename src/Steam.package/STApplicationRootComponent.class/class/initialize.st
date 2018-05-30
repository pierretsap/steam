initialization
initialize
	| app |
	
	self isAbstract ifTrue: [ ^ self ].
	
	app := WAAdmin register: self asApplicationAt: self applicationName.
	app preferenceAt: #sessionClass put: STSession.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary;
		addLibrary: STZnSSOSeasideDemoFileLibrary.
"		
	app configuration
		addParent: STZnOAuth2GoogleConfiguration instance.
		
	app
		preferenceAt: #oauth2GoogleClientId put: '268063595494-kmfvlki3hghgad0egmac620seoffn163.apps.googleusercontent.com';
		preferenceAt: #oauth2GoogleClientSecret put: 'GQOJLyJBOTpgMFkwKgk-Dz7Y';
		preferenceAt: #oauth2GithubRedirectUrl put: 'http://localhost:8080/oauth2callback'.
		
	self registerCallbackHandlerAt: 'oauth2callback'."