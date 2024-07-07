Class {
	#name : 'CarteCaseTest',
	#superclass : 'TestCase',
	#category : 'Bridge-Tests',
	#package : 'Bridge-Tests'
}

{ #category : 'running' }
CarteCaseTest >> setUp [

	super setUp.
	Carte cartesTest
]

{ #category : 'accessing' }
CarteCaseTest >> testCreationCarte [
	" une carte a  
	une couleur : 'P' pour pique, 'C' pour coeur, 'K' pour carreau ou 'T' pour trèfle
	un rang de 1 a 13
	un nom 'A' 'R' 'D' 'V' 'X' '9' '8' '7' '6' '5' '4' '3' '2' "

	| uneCarte |
	uneCarte := Carte new.
	uneCarte couleur: 'P' nom: 'X'.
	self assert: uneCarte rang equals: 9.
	self assert: uneCarte couleur equals: uneCarte class pique.
	uneCarte := Carte couleur: 'P' nom: 'X'.
	self assert: uneCarte identicalTo: (Carte couleur: 'P' nom: 'X').
	uneCarte := Carte couleur: 'P' nom: 'A'.
	self assert: uneCarte pointH equals: 4.
	uneCarte couleur: 'T' nom: '8'.
	self assert: uneCarte pointH equals: 0.

	^ self
]

{ #category : 'accessing' }
CarteCaseTest >> testCreationMain [
	" une main a
	un nom : 'S' pour Sud, 'O' pour Ouest, 'N' pour Nord et 'E' pour Est
	13 cartes 
	 "

	| uneMain |
	uneMain := Main new.
	uneMain nom: 'S'.
	uneMain cartes: (Carte donne: 18).
	self assert: uneMain cartes size equals: 18.
	" Pour les tests "
	uneMain := uneMain cartesFromString: '{ARX92}{V82}{22}{542}'.
	self assert: uneMain cartes size equals: 13.
	self assert: uneMain cartesAsString equals: '{ARX92}{V82}{22}{542}'.
	self assert: uneMain pointH equals: 8.
self assert: uneMain distribution class name equals: 'SR5332P'
.	^ self
]
