accessing
renderContentOn: html

	html heading: object title.	
	html tbsTable 
			beStriped;
			with: [ | description |
				description := object magritteDescription.
				html tableBody: [
					description children do: [ :childDescription |
						html tableRow: [ 
							childDescription acceptMagritte: (self rendererOn: html) ]]]].