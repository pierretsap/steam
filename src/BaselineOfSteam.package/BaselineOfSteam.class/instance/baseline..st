baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			project: 'Seaside3' with: [
				spec
					className: #ConfigurationOfSeaside3;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main/' ];
			project: 'Bootstrap' with: [
				spec
					className: #ConfigurationOfBootstrap;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			project: 'Magritte3' with: [
				spec
					className: #ConfigurationOfMagritte3;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			project: 'BootstrapMagritte' with: [
				spec
					className: #ConfigurationOfBootstrapMagritte;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			package: #'Zinc-SSO-Seaside-Demo' with: [ 
				spec
					repository: 'http://mc.stfx.eu/ZincHTTPComponents/';
					requires: #('Zinc-SSO-Seaside-Support') ];
			package: #'Zinc-SSO-Seaside-Support' with: [ 
				spec repository: 'http://mc.stfx.eu/ZincHTTPComponents/' ];
			project: #SSO with: [ 
				spec
					className: #ConfigurationOfZincHTTPComponents ;
					versionString: #'stable';
					loads: #('SSO-OAuth1' 'SSO-OAuth2' 'SSO-OpenID' );
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];

			package: #'Steam' with: [ 
				spec requires: #( BootstrapMagritte Magritte3 Bootstrap Seaside3 'Zinc-SSO-Seaside-Demo' 'Zinc-SSO-Seaside-Support' ) ]
		]
