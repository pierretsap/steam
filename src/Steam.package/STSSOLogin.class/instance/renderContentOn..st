rendering
renderContentOn: html

	html anchor
		url: self ssoSession authenticationUrl asString;
		with: [
			html image
				width: 180;
				url: self buttonUrl ]