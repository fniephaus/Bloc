change reporting
checkSession
	session == Smalltalk session ifFalse: [ 
		session := Smalltalk session.
		self hostSpace: nil.
		self show.
		self root dirty: true.
		self beDirtyArea.
		self requestNextPulse
		 ]