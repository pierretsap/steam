adding
addDescriptor: aDescriptor to: each
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: each accessor readSelector;
		referenceClass: self