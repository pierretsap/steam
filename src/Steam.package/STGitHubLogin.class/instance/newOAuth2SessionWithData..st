instance creation
newOAuth2SessionWithData: consumerData

	^ ZnGitHubOAuth2Session new
		setConsumerData: consumerData;
		yourself 