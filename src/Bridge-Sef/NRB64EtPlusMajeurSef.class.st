"
Bicolore majeur 64 et plus
"
Class {
	#name : 'NRB64EtPlusMajeurSef',
	#superclass : 'NRB64EtPlusSef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
NRB64EtPlusMajeurSef >> ouv2K [

	^ (self main leveesDeJeu > 8.75 and: [ self main leveesDeDefense > 1.75 ])
		  ifTrue: [ '2K' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB64EtPlusMajeurSef >> ouv2T [

	^ (self main laDeuxiemeDe > 4 and: [ self main perdantes = 3 ])
		  ifTrue: [ '2T' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB64EtPlusMajeurSef >> ouvPalier2 [
	"jamais avec l'autre majeure"

	^ ''
]

{ #category : 'accessing' }
NRB64EtPlusMajeurSef >> ouvPalier3 [
	"jamais avec l'autre majeure"

	^ ''
]

{ #category : 'accessing' }
NRB64EtPlusMajeurSef >> ouvPalier4 [
	"jamais avec l'autre majeure"

	^ ''
]

{ #category : 'accessing' }
NRB64EtPlusMajeurSef >> ouvPalier5 [
	"jamais avec l'autre majeure"

	^ ''
]

{ #category : 'accessing' }
NRB64EtPlusMajeurSef >> ouvPalier6 [
	"jamais avec l'autre majeure"

	^ ''
]
