"
Couleur d'au moins 6 cartes, ou de 5 cartes avec une courte (singleton ou chicane)
"
Class {
	#name : 'NonReguliereFan',
	#superclass : 'Distribution',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'class tests' }
NonReguliereFan >> estNonReguliere [

	^ true
]

{ #category : 'class tests' }
NonReguliereFan >> estReguliere [

	^ false
]

{ #category : 'class tests' }
NonReguliereFan >> estSemiReguliere [

	^ false
]

{ #category : 'accessing' }
NonReguliereFan >> ouv1SA [
	"Non jamais sauf certaines mains 4441"

	^ ''
]

{ #category : 'accessing' }
NonReguliereFan >> ouv2SA [
	"Non jamais"

	^ ''
]

{ #category : 'accessing' }
NonReguliereFan >> ouvPalier1 [

	^ self main pointH > 13
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NonReguliereFan >> ouvPalier2 [

	^ (self main pointH between: 10 and: 13)
		  ifTrue: [ self deuxPalier ]
		  ifFalse: [ '' ]
]
