rendering
renderInputPasswordOn: html
	html text: 'Password:'.
	html break.
	html passwordInput
		callback: [ :value | password := value ];
		value: password