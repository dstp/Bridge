"
M(54)(31)
"
Class {
	#name : 'NRB54MajeurFan',
	#superclass : 'NRB5431Fan',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'accessing' }
NRB54MajeurFan >> ouvPalier1 [

	^ self main pointH > 10
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB54MajeurFan >> ouvPalier2 [ 

	^ ''
]
