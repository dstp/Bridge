"
Bicolores 94 85 76 84 75 66 74 65 64
"
Class {
	#name : 'NRB64EtPlusSef',
	#superclass : 'NRBicoloreSef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
NRB64EtPlusSef >> ouv2K [

	^ (self main leveesDeJeu > 9.75 and: [ self main leveesDeDefense > 1.75 ])
		  ifTrue: [ '2K' ]
		  ifFalse: [ '' ]
]
