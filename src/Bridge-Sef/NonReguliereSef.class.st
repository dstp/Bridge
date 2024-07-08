"
Couleur d'au moins 6 cartes, ou de 5 cartes avec une courte (singleton ou chicane)
"
Class {
	#name : 'NonReguliereSef',
	#superclass : 'ConventionSef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
NonReguliereSef >> coulPalier1 [

	^ self main laPlusLongue
]

{ #category : 'accessing' }
NonReguliereSef >> coulPalier2 [

	^ self main laPlusLongue
]

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
	"Non jamais"

	^ ''
]

{ #category : 'accessing' }
NonReguliereSef >> ouv2SA [
	"Non jamais"

	^ ''
]

{ #category : 'accessing' }
NonReguliereSef >> ouvPalier1 [

	^ ((self main pointHL > 12 or: [ self main pointH > 11 ]) and: [ self main pointHL < 24 ])
		  ifTrue: [ '1' , self coulPalier1 ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NonReguliereSef >> ouvPalier2 [

	^ (self main pointH between: 6 and: 10)
		  ifTrue: [ '2' , self coulPalier2 ]
		  ifFalse: [ '' ]
]
