"
Bicolore 55 PC
"
Class {
	#name : 'NRB55PC',
	#superclass : 'NRB55',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'accessing' }
NRB55PC >> ouvPalier1 [

	^ self main pointH > 10
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB55PC >> ouvPalier2 [
	"jamais avec l'autre majeure"

	^ ''
]
