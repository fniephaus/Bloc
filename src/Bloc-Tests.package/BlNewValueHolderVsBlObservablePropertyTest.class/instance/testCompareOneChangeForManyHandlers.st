as yet unclassified
testCompareOneChangeForManyHandlers
 |vh prop t1 t2 c1 c2 counter|
	c1 := c2 := 0.
	counter := 100000.
	vh := NewValueHolder new.
	prop := BlObjectProperty new.
	
	counter timesRepeat: [vh whenChangedDo: [c1 := c1+1] ].
	counter timesRepeat: [ prop onChangedDo:[c2 := c2+1] ].
	
	t1 := [vh value: Object new] timeToRun.
	t2 := [prop value: Object new] timeToRun.
	
	self assert: t1>t2.
	self assert: c1 = counter.
	self assert: c2 = counter