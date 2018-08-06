initialization
oauthHandlers
	^ {(STGoogleAuthHandler
		key: '268063595494-kmfvlki3hghgad0egmac620seoffn163.apps.googleusercontent.com'
		secret: 'GQOJLyJBOTpgMFkwKgk-Dz7Y'
		redirectUrl: 'http://localhost:' , self seasideServer port asString , '/oauth2callback').
	(STGithubAuthHandler
		key: 'e94060c606d435f40a86'
		secret: '130511e35daa0b24aa756bb961b8a966cbda5df8'
		redirectUrl: 'http://localhost:' , self seasideServer port asString , '/oauth2callback')}