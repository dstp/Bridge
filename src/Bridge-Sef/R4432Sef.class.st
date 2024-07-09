"
(R4432) 

"
Class {
	#name : 'R4432Sef',
	#superclass : 'ReguliereSef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
R4432Sef >> ouvPalier1 [

	^ ((self main pointH between: 12 and: 14) or:
		   (self main pointH between: 18 and: 19))
		  ifTrue: [ self couleur ]
		  ifFalse: [ '' ]
]
