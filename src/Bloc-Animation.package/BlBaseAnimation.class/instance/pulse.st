pulse
pulse
	BlUniverse default requestNextPulse.
	
	elapsedTime := self computeElapsedTime.
	progress := elapsedTime / duration.
	(Time millisecondClockValue < (startTime + delay)) ifTrue: [].
	progress >= 1 ifTrue:[
		self notifyOnFinishedHandlers.
		loopCount := loopCount+1.
		(self isInfinite not and:(loopCount >= loop)) ifTrue:[^ self stop].
		^ self initStart.
		].
	self doStep.