element -> manager
onItemRangeMoved: aFromPosition to: toPosition itemCount: itemCount
	"Ask data source manager to enqueue a corresponding command that items were moved
	fromPosition to toPosition.
	Return true if commands should be processed, false otherwise.
	startPosition must not be nil.
	toPosition must not be nil.
	itemCount must not be nil."
	<return: #Boolean>

	^ self subclassResponsibility