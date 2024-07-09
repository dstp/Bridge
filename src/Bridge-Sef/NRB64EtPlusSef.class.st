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

{ #category : 'accessing' }
NRB64EtPlusSef >> ouvPalier1 [

	^ (self main pointH + self main laDeuxiemeDe + self main laPlusLongueDe > 19)
		  ifTrue: [ '1' , self main laPlusLongue ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB64EtPlusSef >> ouvPalier3 [

	^ (((self main pointH between: 6 and: 9) and: [
		    self main laDeuxiemeDe = 4 ]) and: [
		   self main laPlusLongueDe = 6 ])
		  ifTrue: [ '3' , self main laPlusLongue ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB64EtPlusSef >> ouvPalier4 [

	^ (((self main pointH between: 6 and: 8) and: [
		    self main laDeuxiemeDe = 4 ]) and: [
		   self main laPlusLongueDe = 7 ])
		  ifTrue: [ '4' , self main laPlusLongue ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB64EtPlusSef >> ouvPalier5 [ 

	^ (((self main pointH between: 6 and: 7) and: [
		    self main laDeuxiemeDe = 4 ]) and: [
		   self main laPlusLongueDe = 8 ])
		  ifTrue: [ '5' , self main laPlusLongue ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB64EtPlusSef >> ouvPalier6 [ 

	^ (((self main pointH between: 5 and: 6) and: [
		    self main laDeuxiemeDe = 4 ]) and: [
		   self main laPlusLongueDe = 9 ])
		  ifTrue: [ '6' , self main laPlusLongue ]
		  ifFalse: [ '' ]
]
