accessing
clientUpdated
	self relocate: self client boundsInSpace origin - (5@5).
	self resize: self client boundsInSpace extent + (10@10).
	self updateActionsPosition.