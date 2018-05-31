actions
handleCallback
	"This method is invoked when the SSO provider redirects back to this application." 
	|debug|
	debug := self application .
	oauthSession handleAuthenticationCallback: self requestContext request fields.
	userData := oauthSession getUserData.
	self session userInfos: (STSSOUserInfos with: oauthSession infos: userData).
	application login loginUsername: (self session userInfos userName) password: ''.
	1 haltOnce .