"
C4K4(32)
"
Class {
	#name : 'R4432CKSef',
	#superclass : 'R4432Sef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
R4432CKSef >> ouvPalier1 [

	^ ((self main pointH between: 12 and: 14) or:
		   (self main pointH between: 18 and: 19))
		  ifTrue: [ '1K' ]
		  ifFalse: [ '' ]
]
