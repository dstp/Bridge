"
K4(333)
"
Class {
	#name : 'R4333KSef',
	#superclass : 'R4333Sef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
R4333KSef >> ouvPalier1 [

	^ ((self main pointH between: 12 and: 14) or:
		   (self main pointH between: 18 and: 19))
		  ifTrue: [ '1K' ]
		  ifFalse: [ '' ]
]
