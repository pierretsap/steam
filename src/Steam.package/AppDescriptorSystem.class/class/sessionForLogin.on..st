instance creation
sessionForLogin: aGlorpLogin on: anApp

	^ self basicNew
		appComponent: anApp;
		initialize;
		sessionForLogin: aGlorpLogin