"
Bicolore Majeur 5422
"
Class {
	#name : 'SR54Majeur',
	#superclass : 'SR5422',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'accessing' }
SR54Majeur >> ouv1SA [
	"Jamais avec les 2 Majeure"

	^ ''
]

{ #category : 'accessing' }
SR54Majeur >> ouv2SA [
	"Jamais avec les 2 Majeures"

	^ ''
]

{ #category : 'accessing' }
SR54Majeur >> ouvPalier1 [

	^ self main pointH > 10
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]
