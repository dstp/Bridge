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
NRB55PCSef >> ouvPalier1 [

	^ self main pointH > 10
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB55PCSef >> ouvPalier2 [
	"jamais avec l'autre majeure"

	^ ''
]
