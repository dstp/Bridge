"
(4432) ou (4333)
"
Class {
	#name : 'Reguliere',
	#superclass : 'Distribution',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'class tests' }
Reguliere >> estNonReguliere [

	^ false
]

{ #category : 'class tests' }
Reguliere >> estReguliere [

	^ true
]

{ #category : 'class tests' }
Reguliere >> estSemiReguliere [

	^ false
]

{ #category : 'accessing' }
Reguliere >> ouv1SA [

	^ (self main pointH between: 12 and: 14) ifTrue: [ self unSA ] ifFalse: [ '' ]
]

{ #category : 'accessing' }
Reguliere >> ouv2SA [ 

	^ (self main pointH between: 21 and: 22) ifTrue: [ self deuxSA ] ifFalse: [ '' ]
]

{ #category : 'accessing' }
Reguliere >> ouvPalier1 [

	^ self main pointH > 14
		  ifTrue: [ '1T' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
Reguliere >> ouvPalier2 [
	"jamais"

	^ ''
]
