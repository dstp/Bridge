"
(5332) et ...
"
Class {
	#name : 'SemiReguliere',
	#superclass : 'Distribution',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'class tests' }
SemiReguliere >> estNonReguliere [

	^ false
]

{ #category : 'class tests' }
SemiReguliere >> estReguliere [

	^ false
]

{ #category : 'class tests' }
SemiReguliere >> estSemiReguliere [

	^ true
]

{ #category : 'accessing' }
SemiReguliere >> ouv1SA [

	^ (self main pointH between: 12 and: 14)
		  ifTrue: [ self unSA ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
SemiReguliere >> ouv2SA [

	^ (self main pointH between: 21 and: 22)
		  ifTrue: [ self deuxSA ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
SemiReguliere >> ouvPalier1 [

	^ self main pointH > 13
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
SemiReguliere >> ouvPalier2 [
	"jamais"
	
	^ ''
]
