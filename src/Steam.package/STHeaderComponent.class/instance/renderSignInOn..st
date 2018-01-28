rendering
renderSignInOn: html

	application isLogged ifFalse: [
		html html: '<a data-toggle="modal" href="#myAuthDialog" class="btn">
	<span class="glyphicon glyphicon-lock"></span> Sign In
</a>' ] ifTrue: [

		html tbsButtonGroup
			tbsPullRight;
			with: [	
		html tbsDropdownButton
			beDefault;
			with: [ 
				html tbsGlyphIcon iconUser.
				html space.
				html text: application currentUser displayName.
				html space.
				html tbsCaret].
			html tbsDropdownMenu
				with: [
					 html tbsDropdownMenuItem: [ 
						html anchor
							callback: [ self gotoUserPage ];
							with: 'Settings' ].
					 html tbsDropdownMenuItem: [ 
						html anchor
							callback: [ application logout ];
							with: 'Log out' ] ] ] ]