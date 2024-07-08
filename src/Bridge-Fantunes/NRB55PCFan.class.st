"
Bicolore 55 PC
"
Class {
	#name : 'NRB55PCFan',
	#superclass : 'NRB55Fan',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'accessing' }
NRB55PCFan >> ouvPalier1 [

	^ self main pointH > 10
		  ifTrue: [ '1' , self coulPalier1 ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB55PCFan >> ouvPalier2 [
	"jamais avec l'autre majeure"

	^ ''
]
