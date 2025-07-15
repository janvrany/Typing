Class {
	#name : #BaselineOfInterfaces,
	#superclass : #BaselineOf,
	#category : #BaselineOfInterfaces
}

{ #category : #baselines }
BaselineOfInterfaces >> baseline: spec [
	<baseline>
	spec
		for: #pharo
		do: [
			| hasAssume |
			
			hasAssume := (Object canUnderstand: #assume:) and:[Object canUnderstand: #assume:description:].
			hasAssume ifFalse:[
				spec package: 'Assume'.
			].
			
			
			spec
				package: #'Interfaces' with:[hasAssume ifFalse:[spec requires: 'Assume']];
				package: #'Interfaces-Tonel' with:[spec requires: 'Interfaces'];
				package: #'Interfaces-Examples' with:[spec requires: 'Interfaces'].
		]
]
