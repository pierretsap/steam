initialization
initialize
	"self initialize"
	| app |
	app := WAAdmin register: self asApplicationAt: self applicationName.
	app preferenceAt: #sessionClass put: STSession.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary