"
Couleur d'au moins 6 cartes, ou de 5 cartes avec une courte (singleton ou chicane)
"
Class {
	#name : 'NonReguliereFan',
	#superclass : 'ConventionFantunes',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'accessing' }
NonReguliereFan >> coulPalier1 [

	^ self main laPlusLongue 
]

{ #category : 'accessing' }
NonReguliereFan >> coulPalier2 [

	^ self main laPlusLongue
]

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
		  ifTrue: [ '1' , self coulPalier1 ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NonReguliereFan >> ouvPalier2 [

	^ (self main pointH between: 10 and: 13)
		  ifTrue: [ '2' , self coulPalier2 ]
		  ifFalse: [ '' ]
]
