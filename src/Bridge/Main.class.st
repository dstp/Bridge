"
une main de bridge comprend 13 cartes
"
Class {
	#name : 'Main',
	#superclass : 'Object',
	#instVars : [
		'nom',
		'cartes',
		'carreaux',
		'coeurs',
		'piques',
		'trefles',
		'distribution',
		'assCoul',
		'convention'
	],
	#category : 'Bridge-Base',
	#package : 'Bridge',
	#tag : 'Base'
}

{ #category : 'accessing' }
Main >> assCoul [

	^ assCoul ifNil: [
		  assCoul := OrderedCollection new.
		  assCoul add: (AssCoulLong key: 1 value: self piques size).
		  assCoul add: (AssCoulLong key: 2 value: self coeurs size).
		  assCoul add: (AssCoulLong key: 4 value: self trefles size).
		  assCoul add: (AssCoulLong key: 3 value: self carreaux size).
			assCoul := assCoul sort: [ :a :b | a > b ]
		 ]
]

{ #category : 'accessing' }
Main >> carreaux [

	^ carreaux ifNil: [
		  carreaux := Carreau newFrom: (self cartes select: [ :c | c couleur = Carte carreau ])]
]

{ #category : 'accessing' }
Main >> cartes [

	^ cartes
]

{ #category : 'private' }
Main >> cartes: desCartes [

	piques := coeurs := carreaux := trefles := distribution := assCoul := nil.
	cartes := desCartes
]

{ #category : 'printing' }
Main >> cartesAsString [
	" retourne '{piques}{coeurs}{carreaux}{trèfles}' "

	| aStream |
	aStream := WriteStream on: ''.
	aStream nextPutAll: self piques asString;
		nextPutAll: self coeurs asString;
		nextPutAll: self carreaux asString;
		nextPutAll: self trefles asString .
	^ aStream contents
]

{ #category : 'accessing' }
Main >> cartesFromString: aString [
	"
	'{ARX92}{V82}{RD}{542}'
	"

	| lesCartes |
	lesCartes := OrderedCollection new.
	(aString substrings: '{') doWithIndex: [ :sub :i |
		| coul |
		coul := Carte couleurs at: i.
		sub
			do: [ :n | lesCartes add: (Carte couleur: coul nom: n asString) ]
			without: $} ] .
	self cartes: lesCartes
]

{ #category : 'accessing' }
Main >> coeurs [

	^ coeurs ifNil: [
		  coeurs := Coeur newFrom:
			              (self cartes select: [ :c |
				               c couleur = Carte coeur ]) ]
]

{ #category : 'accessing' }
Main >> convention [

	^ convention ifNil: [ convention := 'Fan' ]
]

{ #category : 'accessing' }
Main >> convention: aString [ 
	convention := aString
]

{ #category : 'accessing' }
Main >> distribCouleurs [

	^ (self assCoul collect: [ :e | Carte couleurs at: e key ])
		  joinUsing: ''
]

{ #category : 'accessing' }
Main >> distribLongueur [

	^ (self assCoul collect: [ :e | e value ]) joinUsing: ''
]

{ #category : 'accessing' }
Main >> distribution [

	^ distribution ifNil: [
		  | nClass distrib couleurs bMaj |
		  distrib := self distribLongueur.
		  couleurs := self distribCouleurs.
		  bMaj := false.
		  (couleurs copyFrom: 1 to: 2) sorted = 'CP' ifTrue: [ bMaj := true ].
		  nClass := 'Non Traité'.
		  distrib = '4432' ifTrue: [
			  nClass := 'R4432' , (couleurs copyFrom: 1 to: 2) asString ].
		  distrib = '5431' ifTrue: [
			  nClass := 'NRB54' , (couleurs copyFrom: 1 to: 4) asString ].
		  distrib = '5332' ifTrue: [
			  nClass := 'SR5332' , (couleurs copyFrom: 1 to: 1) asString ].
		  distrib = '5422' ifTrue: [
			  nClass := 'SR54' , (couleurs copyFrom: 1 to: 2) asString ].
		  distrib = '4333' ifTrue: [
			  nClass := 'R4333' , (couleurs copyFrom: 1 to: 1) asString ].
		  ((distrib copyFrom: 1 to: 1) >= '6' and: [
			   (distrib copyFrom: 2 to: 2) >= '4' ]) ifTrue: [
			  nClass := bMaj
				            ifFalse: [ 'NRB64EtPlus' ]
				            ifTrue: [ 'NRB64EtPlusMajeur' ] ].
		  (distrib copyFrom: 1 to: 2) = '55' ifTrue: [
			  nClass := 'NRB55' , (couleurs copyFrom: 1 to: 2) asString ].
		  distrib = '4441' ifTrue: [
			  nClass := 'NRT4441' , (couleurs copyFrom: 4 to: 4) asString ].
		  distrib = '5440' ifTrue: [
			  nClass := 'NRT' , (couleurs copyFrom: 1 to: 3) asString ].
		  (distrib size > 4  or: [((distrib copyFrom: 1 to: 1) >= '6' and: [
			   (distrib copyFrom: 2 to: 3) < '4' ])]) ifTrue: [
			  nClass := 'NRUnicolore' , (couleurs copyFrom: 1 to: 1) asString ].
			nClass := nClass , self convention .
		  distribution := (self class environment at: nClass asSymbol) new
			                  main: self ]
]

{ #category : 'accessing' }
Main >> laDeuxieme [

	^ Carte couleurs at: (self assCoul at: 2) key
]

{ #category : 'accessing' }
Main >> laDeuxiemeDe [

	^ (self assCoul at: 2) value
]

{ #category : 'accessing' }
Main >> laPlusCourte [

	^ Carte couleurs at: (self assCoul at: 4) key
]

{ #category : 'accessing' }
Main >> laPlusCourteDe [

	^ (self assCoul at: 4) value
]

{ #category : 'accessing' }
Main >> laPlusLongue [

	^ Carte couleurs at: (self assCoul at: 1) key
]

{ #category : 'accessing' }
Main >> laPlusLongueDe [

	^ (self assCoul at: 1) value
]

{ #category : 'accessing' }
Main >> laTroisieme [

	^ Carte couleurs at: (self assCoul at: 3) key
]

{ #category : 'accessing' }
Main >> laTroisiemeDe [

	^ (self assCoul at: 3) value
]

{ #category : 'accessing' }
Main >> leveesDeDefense [ 

	^ self piques leveesDeDefense + self coeurs leveesDeDefense
	  + self carreaux leveesDeDefense + self trefles leveesDeDefense
]

{ #category : 'accessing' }
Main >> leveesDeJeu [ 

	^ self piques leveesDeJeu + self coeurs leveesDeJeu + self carreaux leveesDeJeu + self trefles leveesDeJeu
]

{ #category : 'accessing' }
Main >> nom [

	^ nom ifNil: [ 'Bof' ]
]

{ #category : 'private' }
Main >> nom: unNom [
	nom := unNom
]

{ #category : 'accessing' }
Main >> ouverture [

	^ self distribution ouverture
]

{ #category : 'accessing' }
Main >> perdantes [ 

	^ self piques perdantes + self coeurs perdantes + self carreaux perdantes + self trefles perdantes
]

{ #category : 'accessing' }
Main >> piques [

	^ piques ifNil: [
		  piques := Pique newFrom:
			              (self cartes select: [ :c |
				               c couleur = Carte pique ]) ]
]

{ #category : 'accessing' }
Main >> pointD [

	^ self piques pointD + self coeurs pointD + self carreaux pointD
	  + self trefles pointD
]

{ #category : 'accessing' }
Main >> pointH [

	^ self piques pointH + self coeurs pointH + self carreaux pointH + self trefles pointH
]

{ #category : 'accessing' }
Main >> pointHL [

	^ self pointH + self pointL
]

{ #category : 'accessing' }
Main >> pointL [

	^ self piques pointL + self coeurs pointL + self carreaux pointL
	  + self trefles pointL
]

{ #category : 'printing' }
Main >> printOn: aStream [

	aStream
		nextPutAll: self nom;
		nextPutAll: self piques asString;
		nextPutAll: self coeurs asString;
		nextPutAll: self carreaux asString;
		nextPutAll: self trefles asString
]

{ #category : 'accessing' }
Main >> trefles [

	^ trefles ifNil: [
		  trefles := Trefle newFrom:
			              (self cartes select: [ :c |
				               c couleur = Carte trefle ]) ]
]
