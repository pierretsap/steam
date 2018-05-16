rendering
renderContentOn: html
	html tbsListGroup: [
		application menuEntries do: [ :entry | self renderMenuEntryLink: entry on: html ] ]