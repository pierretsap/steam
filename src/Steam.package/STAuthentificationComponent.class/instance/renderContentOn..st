rendering
renderContentOn: html
	| googleSession |
	html tbsModal
		id: 'myAuthDialog';
		with: [ html tbsModalDialog: [
			html tbsModalContent: [
				self renderHeaderOn: html.
				html tbsModalBody: [
					html form: [
						self renderInputAccountOn: html.
						html break.
						self renderInputPasswordOn: html.
						html break.
						html break.
						html tbsModalFooter: [ self renderOkCancelOn: html ]].
					html break; break.
	
					googleSession := self session
						attributeAt: 'google-session' 
						ifAbsentPut: [ ZnOAuth2Session google: (ZnOAuth2ConsumerData key: '268063595494-kmfvlki3hghgad0egmac620seoffn163.apps.googleusercontent.com' secret: 'GQOJLyJBOTpgMFkwKgk-Dz7Y' redirectUrl: 'http://localhost:8181/sso-google-callback') ].
					
					html anchor
						url: googleSession authenticationUrl asString;
						with: 'Badass Google Login'.
					
					]]]]