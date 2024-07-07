"
Association suite et longueur
"
Class {
	#name : 'AssCoulLong',
	#superclass : 'Association',
	#category : 'Bridge-Base',
	#package : 'Bridge',
	#tag : 'Base'
}

{ #category : 'testing' }
AssCoulLong >> < unAutre [

	^ self value < unAutre value or: [
		  self value = unAutre value and: [ self key > unAutre key ] ]
]

{ #category : 'comparing' }
AssCoulLong >> = unAutre [

	^ self value = unAutre value and: [ self key > unAutre key ]
]

{ #category : 'comparing' }
AssCoulLong >> hash [

	^ self identityHash
]
