rendering
initialize

	super initialize.
	login := STExampleLogin on: self.
	self
		addLogin: (STGoogleLogin
			key: '268063595494-kmfvlki3hghgad0egmac620seoffn163.apps.googleusercontent.com'
			secret: 'GQOJLyJBOTpgMFkwKgk-Dz7Y'
			redirectUrl: 'http://localhost:8181/sso-google-callback');
		addLogin: (STGitHubLogin
			key: 'e94060c606d435f40a86'
			secret: '130511e35daa0b24aa756bb961b8a966cbda5df8'
			redirectUrl: 'http://localhost:8181/sso-github-callback');
		addLogin: (STFacebookLogin
			key: '246016802793279'
			secret: '3ffa5d6c838673efc2df575434e8f7d0'
			redirectUrl: 'https://localhost:8181/sso-facebook-callback').
	
	store := STMemoryStore on: self.