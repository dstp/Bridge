"
Couleur d'au moins 6 cartes, sans autre couleur d'au moins 4 cartes
"
Class {
	#name : 'NRUnicoloreSef',
	#superclass : 'NonReguliereSef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
NRUnicoloreSef >> ouv2T [

	^ ((self main leveesDeJeu between: 8.5 and: 9.75) and: [ self main laPlusLongueDe = 7 ] )
		  ifTrue: [ ^ '2T' ]
		  ifFalse: [ '' ]
]
