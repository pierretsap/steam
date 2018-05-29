actions
handleCallback
	"This method is invoked when the SSO provider redirects back to this application." 

	oauthSession handleAuthenticationCallback: self requestContext request fields.
	userData := oauthSession getUserData.
	self application application login loginUsername: (userData at: 'given_name') password: 'none'.
	self session userInfos addAll: userData .
