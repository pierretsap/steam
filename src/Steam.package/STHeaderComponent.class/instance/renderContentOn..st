rendering
renderContentOn: html
	html render: (STAuthentificationComponent from: self application: application).
	html tbsNavbar beDefault with: [
		html tbsNavbarHeader: [ 
"			logo renderContentOn: html." 1 haltOnce .
			html image style: 'padding : 10px'; class:'pull-left'; width: 70; url: 'https://i2.wp.com/www.hicom.fr/wp-content/uploads/2017/09/Logo_TV_2015.png'.
			html tbsNavbarBrand
				url: 'http://localhost:8080/Example%20App';
				with: 	application title].
		html form: [
			html tbsNavbarText tbsPullRight;
			with: [ self renderSignInOn: html ] ] ]