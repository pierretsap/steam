actions
handleCallback
	"This method is invoked when the SSO provider redirects back to this application." 
|t|
	oauthSession handleAuthenticationCallback: self requestContext request fields.
	userData := oauthSession getUserData.
	self session userInfos: (STOSSUserInfos with: oauthSession infos: userData).t:=self session.1haltOnce.  
	self application application login loginUsername: (self session userInfos userName) password: 'none'