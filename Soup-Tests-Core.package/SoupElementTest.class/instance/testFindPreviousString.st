finding tags
testFindPreviousString
	| soup b |
	soup := Soup fromString: '<b id="1"><b id="2">abc<b id="3"><b id="4">'.
	b := soup findTag: [:e | e id = '3'].
	self assert: (b findPreviousString: true) contents = 'abc'.

	