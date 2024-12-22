"
(5332) et ...
"
Class {
	#name : 'SemiReguliereFan',
	#superclass : 'ConventionFantunes',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'class tests' }
SemiReguliereFan >> estNonReguliere [

	^ false
]

{ #category : 'class tests' }
SemiReguliereFan >> estReguliere [

	^ false
]

{ #category : 'class tests' }
SemiReguliereFan >> estSemiReguliere [

	^ true
]

{ #category : 'accessing' }
SemiReguliereFan >> ouv1SA [

	^ (self main pointH between: 12 and: 14)
		  ifTrue: [ self unSA ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
SemiReguliereFan >> ouv2SA [

	^ (self main pointH between: 21 and: 22)
		  ifTrue: [ self deuxSA ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
SemiReguliereFan >> ouvPalier1 [

	^ self main pointH > 13
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
SemiReguliereFan >> ouvPalier2 [
	"jamais sauf en 3èmè position"
	
	^ ''
]
