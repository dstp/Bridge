"
C5T4(22)
"
Class {
	#name : 'SR54CTSef',
	#superclass : 'SR5422Sef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
SR54CTSef >> ouv2T [

	^ (self main pointHL between: 22 and: 23)
		  ifTrue: [ '2T' ]
		  ifFalse: [ '' ]
]
