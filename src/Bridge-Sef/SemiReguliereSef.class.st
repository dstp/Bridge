"
(5332) et ...
"
Class {
	#name : 'SemiReguliereSef',
	#superclass : 'Distribution',
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

	^ (self main pointH between: 12 and: 14)
		  ifTrue: [ self unSA ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
SemiReguliereSef >> ouv2SA [

	^ (self main pointH between: 21 and: 22)
		  ifTrue: [ self deuxSA ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
SemiReguliereSef >> ouvPalier1 [

	^ self main pointH > 13
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
SemiReguliereSef >> ouvPalier2 [
	"jamais"
	
	^ ''
]
