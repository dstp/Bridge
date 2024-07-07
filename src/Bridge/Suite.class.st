"
Je représente une suite de cartes de la même couleur
"
Class {
	#name : 'Suite',
	#superclass : 'OrderedCollection',
	#category : 'Bridge-Base',
	#package : 'Bridge',
	#tag : 'Base'
}

{ #category : 'accessing' }
Suite >> nom [

	^ self className first asString
]

{ #category : 'accessing' }
Suite >> pointH [

	^ self isEmpty ifTrue: [ 0 ] ifFalse: [ self sum ]
]

{ #category : 'printing' }
Suite >> printOn: aStream [

	aStream
		nextPutAll: '{';
		nextPutAll: (self sort reversed joinUsing: '');
		nextPutAll: '}'
]
