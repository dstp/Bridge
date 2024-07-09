"
(4432) ou (4333)
"
Class {
	#name : 'ReguliereSef',
	#superclass : 'ConventionSef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'class tests' }
ReguliereSef >> estNonReguliere [

	^ false
]

{ #category : 'class tests' }
ReguliereSef >> estReguliere [

	^ true
]

{ #category : 'class tests' }
ReguliereSef >> estSemiReguliere [

	^ false
]

{ #category : 'accessing' }
ReguliereSef >> ouv1SA [

	^ (self main pointHL between: 15 and: 17)
		  ifTrue: [ '1SA' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
ReguliereSef >> ouv2SA [

	^ (self main pointHL between: 20 and: 21)
		  ifTrue: [ '2SA' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
ReguliereSef >> ouv2T [

	^ (self main pointHL between: 22 and: 23)
		  ifTrue: [ '2T' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
ReguliereSef >> ouvPalier1 [

	^ ((self main pointH between: 12 and: 14) or: (self main pointH between: 18 and: 19))
		  ifTrue: [ '1T' ]
		  ifFalse: [ '' ]
]
