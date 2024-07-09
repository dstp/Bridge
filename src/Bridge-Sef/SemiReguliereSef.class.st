"
(5332) et ...
"
Class {
	#name : 'SemiReguliereSef',
	#superclass : 'ConventionSef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'class tests' }
SemiReguliereSef >> estNonReguliere [

	^ false
]

{ #category : 'class tests' }
SemiReguliereSef >> estReguliere [

	^ false
]

{ #category : 'class tests' }
SemiReguliereSef >> estSemiReguliere [

	^ true
]

{ #category : 'accessing' }
SemiReguliereSef >> ouv1SA [

	^ (self main pointHL between: 15 and: 17)
		  ifTrue: [ '1SA' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
SemiReguliereSef >> ouv2SA [

	^ (self main pointHL between: 20 and: 21)
		  ifTrue: [ '2SA' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
SemiReguliereSef >> ouvPalier1 [

	^ (self main pointH > 11 or: [ self main pointHL > 12 ])
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]
