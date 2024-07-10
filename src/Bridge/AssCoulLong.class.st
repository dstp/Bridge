"
Uniquement à usage privé
Association rang de la couleur et longueur de la couleur
ex : 1 -> 10 ; 10 cartes à pique . 
1, 2, 3 et 4 désignent respectivement pique, coeur, carreau et trefle
ordre : longueur décroissante et à égalité rang croissant


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

	^ self value = unAutre value and: [ self key = unAutre key ]
]

{ #category : 'comparing' }
AssCoulLong >> hash [

	^ self identityHash
]
