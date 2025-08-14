Class {
	#name : #BaselineOfTyping,
	#superclass : #BaselineOf,
	#category : #BaselineOfTyping
}

{ #category : #baselines }
BaselineOfTyping >> baseline: spec [
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
				package: #'Typing' with:[
					hasAssume
						ifFalse:[spec requires:#('Assume')]];
				package: #'Typing-Examples' with:[spec requires: 'Typing'].
		]
]
