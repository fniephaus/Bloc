as yet unclassified
testCompareOneDispatchForManyHandlers
 |ann reg t1 t2 c1 c2 counter|
	c1 := c2 := 0.
	counter := 100000.
	ann := Announcer new.
	reg := BlHandlerRegistry new.
	
	counter timesRepeat: [ann subscribe: BlEvent do: [c1 := c1+1] ].
	counter timesRepeat: [ reg add: (BlEventHandler on: BlEvent do:[c2 := c2+1]) ].
	
	t1 := [ann announce: BlEvent new] timeToRun.
	t2 := [reg dispatchEvent: BlEvent new] timeToRun.
	
	self assert: t1>t2.
	self assert: c1 = counter.
	self assert: c2 = counter