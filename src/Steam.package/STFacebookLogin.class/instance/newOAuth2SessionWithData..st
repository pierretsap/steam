rendering
newOAuth2SessionWithData: consumerData

	^ ZnFacebookOAuth2Session new
		setConsumerData: consumerData;
		yourself 