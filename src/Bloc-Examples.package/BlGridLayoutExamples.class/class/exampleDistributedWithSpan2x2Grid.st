examples
exampleDistributedWithSpan2x2Grid
	<example>
	| e1 e2 e3 el space|

	e1 := BlElement new
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent.
			c grid vertical span: 2 ];
		background: Color yellow.

	e2 := BlElement new
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent.
			c grid horizontal weight: 2 ];
		background: Color green.
	
	e3 := BlElement new
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent.
			c grid vertical weight: 0.5 ];
		background: Color red.
	
	el := BlElement new
		layout: (BlGridLayout new columnCount: 2);
		extent: 300@300;
		position: 200 @ 100;
		background: Color blue;
		addChildren: { e1. e2. e3 };
		yourself.
	
	space := BlSpace new.
	space root addChild: el.
	BlElementSelection on: el.
	space	show
	