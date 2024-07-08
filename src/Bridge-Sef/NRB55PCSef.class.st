"
Bicolore 55 PC
"
Class {
	#name : 'NRB55PCSef',
	#superclass : 'NRB55Sef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
NRB55PCSef >> ouv2T [

	^ self main perdantes = 3
		  ifTrue: [ '2T' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB55PCSef >> ouvPalier2 [

	^ ''
]
