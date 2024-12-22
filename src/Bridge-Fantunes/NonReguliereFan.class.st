"
Couleur d'au moins 6 cartes, ou de 5 cartes avec une courte
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
"
Ouvertures au palier 2
	En 1er ou 2ème position
		force: 10-13
		distribution: couleur 6+ ou 5 avec une courte (dénie donc 5332 et 5422)
			2M dénie M'4
	En 3ème position
		force: 5-13
		distriution: couleur 5+
	En 4ème position
		force: 10-13
		distribuion: couleur 5+
"

	^ (self main pointH between: 10 and: 13)
		  ifTrue: [ '2' , self coulPalier2 ]
		  ifFalse: [ '' ]
]
