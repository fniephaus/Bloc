accessing
countOnesBefore: index
	| counter |

	counter := 0.
	
	next ifNil: [ 
		index > array size
			ifTrue: [ ^ array count: [ :each | each = true asBit ] ] ].

	index > array size
		ifTrue: [ counter := next countOnesBefore: index - array size ].
		
	1 to: index - 1 do: [ :i | 
		(array byteAt: i) = true asBit
			ifTrue: [ counter := counter + 1 ] ].
		
	^ counter