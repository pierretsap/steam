rendering
renderContentOn: html
	html render: (STAuthentificationComponent from: self application: application).
	html tbsNavbar beDefault with: [
		html tbsNavbarHeader: [ 
			html anchor url: 'http://localhost:8080/Example%20App'; with: [ logo renderContentOn: html ].
			html tbsNavbarBrand
				url: 'http://localhost:8080/Example%20App';
				with: 	application title].
		html form: [
			html tbsNavbarText tbsPullRight;
			with: [ self renderSignInOn: html ] ] ]