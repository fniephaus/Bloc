*Bloc
asBlKeyCombination
	^ BlCombinationSequence
		withAll: (self sequence collect: [ :each | each asBlKeyCombination ])