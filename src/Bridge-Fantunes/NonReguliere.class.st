"
Couleur d'au moins 6 cartes, ou de 5 cartes avec une courte (singleton ou chicane)
"
Class {
	#name : 'NonReguliere',
	#superclass : 'Distribution',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'class tests' }
NonReguliere >> estNonReguliere [

	^ true
]

{ #category : 'class tests' }
NonReguliere >> estReguliere [

	^ false
]

{ #category : 'class tests' }
NonReguliere >> estSemiReguliere [

	^ false
]

{ #category : 'accessing' }
NonReguliere >> ouv1SA [
	"Non jamais sauf certaines mains 4441"

	^ ''
]

{ #category : 'accessing' }
NonReguliere >> ouv2SA [
	"Non jamais"

	^ ''
]

{ #category : 'accessing' }
NonReguliere >> ouvPalier1 [

	^ self main pointH > 13
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NonReguliere >> ouvPalier2 [

	^ (self main pointH between: 10 and: 13)
		  ifTrue: [ self deuxPalier ]
		  ifFalse: [ '' ]
]
