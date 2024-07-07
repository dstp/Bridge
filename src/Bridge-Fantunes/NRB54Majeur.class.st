"
M(54)(31)
"
Class {
	#name : 'NRB54Majeur',
	#superclass : 'NRB5431',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'accessing' }
NRB54Majeur >> ouvPalier1 [

	^ self main pointH > 10
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB54Majeur >> ouvPalier2 [ 

	^ ''
]
