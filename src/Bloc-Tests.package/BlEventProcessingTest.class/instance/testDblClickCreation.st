as yet unclassified
testDblClickCreation

	self sendInsideTargetEvent: (BlMouseDownEvent new button: BlMouseEvent primaryButton).
	self assertFiredEventIs:  BlMouseDownEvent target: self child withPropagation: true.
	
	self sendInsideTargetEvent: (BlMouseUpEvent new button: BlMouseEvent primaryButton).
	self assertFiredEventIs:  BlMouseUpEvent target: self child withPropagation: true.
	self assertFiredEventIs:  BlClickEvent target: self child withPropagation: true.
	
	self sendInsideTargetEvent: (BlMouseDownEvent new button: BlMouseEvent primaryButton).
	self assertFiredEventIs:  BlMouseDownEvent target: self child withPropagation: true.
	
	self sendInsideTargetEvent: (BlMouseUpEvent new button: BlMouseEvent primaryButton).
	self assertFiredEventIs:  BlMouseUpEvent target: self child withPropagation: true.
	self assertFiredEventIs:  BlDblClickEvent target: self child withPropagation: true.