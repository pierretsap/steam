rendering
renderMenuEntryLink: entry on: html

	| item |
	item := html tbsLinkifyListGroupItem.
	item callback: [ self selectEntry: entry ].
	(application isSelectedEntry: entry)
		ifTrue: [ item beActive ].
	item with: entry title