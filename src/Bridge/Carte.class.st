"
Une carte de jeu
"
Class {
	#name : 'Carte',
	#superclass : 'Object',
	#instVars : [
		'couleur',
		'nom'
	],
	#classInstVars : [
		'cartes',
		'noms',
		'couleurs'
	],
	#category : 'Bridge-Base',
	#package : 'Bridge',
	#tag : 'Base'
}

{ #category : 'private' }
Carte class >> carreau [

	^ self couleurs at: 3
]

{ #category : 'private' }
Carte class >> cartes [

	^ cartes ifNil: [
		  cartes := OrderedCollection newFrom: (self couleurs flatCollect: [ :uneCouleur |
			            self noms collect: [ :unNom |
				            self new couleur: uneCouleur nom: unNom ] ] )]
]

{ #category : 'private' }
Carte class >> coeur [

	^ self couleurs at: 2
]

{ #category : 'creation' }
Carte class >> couleur: uneCouleur nom: unNom [

	self cartes
		  detect: [ :uneCarte |
			  uneCarte couleur = uneCouleur and: [ uneCarte nom = unNom ] ]
		  ifFound: [ :uneCarte | ^ uneCarte ]
		  ifNone: [ ^ Error signal: 'Paramètres incorrects' ]
]

{ #category : 'private' }
Carte class >> couleurs [

	^ couleurs ifNil: [
		  couleurs := #( 'P' 'C' 'K' 'T' ) ]
]

{ #category : 'private' }
Carte class >> donne: unNb [
	"retourne unNb de cartes"

	| cs |
	unNb = 0 ifTrue: [ ^ self cartes class new ].
	cs := self cartes.
	cs size >= unNb ifTrue: [
		cs := cs shuffled copyFrom: 1 to: unNb ].
	cartes := self cartes reject: [ :c | cs includes: c ].
	^ cs
]

{ #category : 'private' }
Carte class >> noms [

	^ noms ifNil: [
		  noms := #( '2' '3' '4' '5' '6' '7' '8' '9' 'X' 'V' 'D' 'R' 'A' ) ]
]

{ #category : 'private' }
Carte class >> pique [

	^ self couleurs at: 1
]

{ #category : 'private' }
Carte class >> trefle [

	^ self couleurs at: 4
]

{ #category : 'comparing' }
Carte >> + unNb [

	^  unNb + self pointH
]

{ #category : 'comparing' }
Carte >> - unNb [

	^ unNb - self pointH
]

{ #category : 'comparing' }
Carte >> < uneCarte [
	^ self couleur = uneCarte couleur and: [  self rang < uneCarte rang ]
]

{ #category : 'comparing' }
Carte >> <= uneCarte [

	^ self couleur = uneCarte couleur and: [ self rang <= uneCarte rang ]
]

{ #category : 'comparing' }
Carte >> = uneCarte [

	^ self couleur = uneCarte couleur and: [ self rang = uneCarte rang ]
]

{ #category : 'comparing' }
Carte >> adaptToNumber: rcvr andSend: selector [

	selector == #+ ifTrue: [ ^ self + rcvr ].
	selector == #- ifTrue: [ ^ self - rcvr ]
]

{ #category : 'accessing' }
Carte >> couleur [

	^ couleur
]

{ #category : 'private' }
Carte >> couleur: uneCouleur nom: unNom [
	couleur := uneCouleur .
	nom := unNom
]

{ #category : 'comparing' }
Carte >> hash [

	^ super identityHash
]

{ #category : 'accessing' }
Carte >> nom [
	^ nom
]

{ #category : 'accessing' }
Carte >> nomH [

	^ self pointH = 0 ifTrue: [  'x' ] ifFalse: [  self nom ]
]

{ #category : 'accessing' }
Carte >> pointH [

	^ self rang - 9 max: 0
]

{ #category : 'printing' }
Carte >> printOn: aStream [
	aStream nextPutAll: self nom
]

{ #category : 'accessing' }
Carte >> rang [

	^ self class noms indexOf:
		  self nom
]
