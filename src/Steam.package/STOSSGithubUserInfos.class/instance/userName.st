accessing
userName
	| name |
	name := infos at: 'name'.
	name isEmpty ifTrue: [ self userLogin ] ifFalse: [ ^ name ]