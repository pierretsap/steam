instance creation
from: aComponent application: anApplication

	^ (self application: anApplication)
		component: aComponent;
		yourself