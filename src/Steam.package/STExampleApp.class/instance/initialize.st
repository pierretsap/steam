initialization
initialize
	"self initialize"

	super initialize.
	login := STExampleLogin on: self.
	menuEntries := { 
		STListAction on: STExampleGame title: 'Games'.
		STListAction on: STGameCategory title: 'Game Categories'.
		STListAction on: STExampleArticle title: 'Articles'.
		STListAction on: STArticleTag title: 'Articles Tags'.
		STSearchAction on: (STExampleGameSearch onSteamApplication: self) title: 'Search Games'.}.
	"self fillDBWithExamples"