converting
convertToDatabaseTitle: title type: type
	| stringResult class |
	class := type propertyAt: #STObjectClass ifAbsent: [ nil ].
	class 
		ifNotNil: [ stringResult  := '	aTable addForeignKeyFrom: (aTable createFieldNamed: ''',title,''' type: platform int4) to: ((self tableNamed: ''{1}'') fieldNamed: ''id'').' format: {class asString asUppercase} ] 
		ifNil: [ stringResult := '	aTable createFieldNamed: ''', title, ''' type: (platform ', type convertTypeForGlorp , ').
'].
	^ stringResult 
