rendering
renderContentOn: html
	html render: (STAuthentificationComponent from: self application: application).
	
	html tbsNavbar beDefault with: [
		html tbsNavbarHeader: [ 
			html tbsNavbarBrand
				url: '#';
				with: application title].
		html form: [
			html tbsNavbarText tbsPullRight;
			with: [ self renderSignInOn: html ] ] ]