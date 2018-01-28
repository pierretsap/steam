visiting
visitImageDescription: aSTImageDescription 
	
	self
		renderRowForDescription: aSTImageDescription
		withDataCell: [
			html tbsImage
				beResponsive;
				url: (object readUsing: aSTImageDescription) ]