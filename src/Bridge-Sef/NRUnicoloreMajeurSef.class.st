Class {
	#name : 'NRUnicoloreMajeurSef',
	#superclass : 'NRUnicoloreSef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
NRUnicoloreMajeurSef >> ouv2T [

	^ ((self main leveesDeJeu between: 8 and: 8.75) and: [ ((
		    self main leveesDeDefense > 1.75 ) and: [ 
		   self main laPlusLongueDe = 6 ] ) or: [ self main laPlusLongueDe = 7 ] ])
		  ifTrue: [ ^ '2T' ]
		  ifFalse: [ '' ]
]
