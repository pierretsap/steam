rendering
renderContentColumnOn: html

	html tbsColumn
		extraSmallSize: 12;
		smallSize: 10;
		mediumSize: 8;
		with: [ self basicRenderContentOn: html ]