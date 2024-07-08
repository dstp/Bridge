"
Couleur d'au moins 6 cartes, ou de 5 cartes avec une courte (singleton ou chicane)
"
Class {
	#name : 'NonReguliereSef',
	#superclass : 'Distribution',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'class tests' }
NonReguliereSef >> estNonReguliere [

	^ true
]

{ #category : 'class tests' }
NonReguliereSef >> estReguliere [

	^ false
]

{ #category : 'class tests' }
NonReguliereSef >> estSemiReguliere [

	^ false
]

{ #category : 'accessing' }
NonReguliereSef >> ouv1SA [
	"Non jamais sauf certaines mains 4441"

	^ ''
]

{ #category : 'accessing' }
NonReguliereSef >> ouv2SA [
	"Non jamais"

	^ ''
]

{ #category : 'accessing' }
NonReguliereSef >> ouvPalier1 [

	^ self main pointH > 13
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NonReguliereSef >> ouvPalier2 [

	^ (self main pointH between: 10 and: 13)
		  ifTrue: [ self deuxPalier ]
		  ifFalse: [ '' ]
]
