event managing
addEventHandlerOn: anEventClass do: aBlock
	self addEventHandler: (BlEventHandler on: anEventClass do: aBlock)