"
Bicolore Majeur 5422
"
Class {
	#name : 'SR54MajeurFan',
	#superclass : 'SR5422Fan',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'accessing' }
SR54MajeurFan >> ouv1SA [
	"Jamais avec les 2 Majeure"

	^ ''
]

{ #category : 'accessing' }
SR54MajeurFan >> ouv2SA [
	"Jamais avec les 2 Majeures"

	^ ''
]

{ #category : 'accessing' }
SR54MajeurFan >> ouvPalier1 [

	^ self main pointH > 10
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]
