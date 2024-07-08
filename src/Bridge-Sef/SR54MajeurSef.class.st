"
Bicolore Majeur 5422
"
Class {
	#name : 'SR54MajeurSef',
	#superclass : 'SR5422Sef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
SR54MajeurSef >> ouv1SA [
	"Jamais avec les 2 Majeure"

	^ ''
]

{ #category : 'accessing' }
SR54MajeurSef >> ouv2SA [
	"Jamais avec les 2 Majeures"

	^ ''
]

{ #category : 'accessing' }
SR54MajeurSef >> ouv2T [

	^ (self main pointHL between: 22 and: 23)
		  ifTrue: [ '2T' ]
		  ifFalse: [ '' ]
]
