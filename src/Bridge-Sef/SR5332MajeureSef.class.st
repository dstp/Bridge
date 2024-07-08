"
M5(332)
"
Class {
	#name : 'SR5332MajeureSef',
	#superclass : 'SR5332Sef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
SR5332MajeureSef >> ouv2T [

	^ (self main pointHL between: 22 and: 23)
		  ifTrue: [ '2T' ]
		  ifFalse: [ '' ]
]
