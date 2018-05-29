rendering
renderContentOn: html
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
					self renderSignInOptionsOn: html
	
					"application logins do: [ :each |
						each renderContentOn: html]" ] ] ] ]