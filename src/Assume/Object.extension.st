Extension { #name : #Object }

{ #category : #'*Assume' }
Object >> assume: aBlock [
	"Throw an assumption error if aBlock does not evaluates to true.
	
	 This is much like `Object >> #assert:`, see comment in `Object >> #assume:description:` for
	 further explanation of the difference.
	"
	<debuggerCompleteToSender>
	self assume: aBlock description: 'Assumption failed'.
]

{ #category : #'*Assume' }
Object >> assume: aBlock description: aStringOrBlock [
	"Throw an assumption error if aBlock does not evaluates to true.
	
	This is much like `Object >> #assume:description:` - both will throw an exception
	at runtime if check fails. The difference is that assume is meant express and
	check method's preconditions whereas assert is to check method's interrim state
	and postcondition.

	In another words - if assume fails then it means it is caller's fault: the caller
	has called the method with wrong arguments or when the receiver is in inappropriate
	state.
	If assert fails then it is method's fault: unexpected internal state or situation
	at some point if it's execution.

	In yet another words (from LH slack):

	> Just like
	>
	> ```
	> cAssert b
	> ```
	>
	> requires b as a precondition,
	>
	> ```
	> cAssume b
	> ```
	>
	> “Ensures” b as a postcondition!!
	> In a strict language you can write
	> ```
	> cAssume :: b:Bool -> {v:() | b}
	> cAssume b = if b then () else diverge()
	> ```
	"
	<debuggerCompleteToSender>
	aBlock value == true
		ifFalse: [ AssumptionFailure signal: aStringOrBlock value ]
]
