"
Le système d'enchères français
"
Class {
	#name : 'ConventionSef',
	#superclass : 'Distribution',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
ConventionSef >> ouv2K [
	"Forcing de manche"

	^ self main pointHL > 23
		  ifTrue: [ '2K' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
ConventionSef >> ouv2T [
	"Fort indéterminé"

	^ ''
]

{ #category : 'accessing' }
ConventionSef >> ouverture [

	| ouv |
	" ouvertures précises manquent les barrages aux paliers 3 et supérieurs "
	ouv := self ouv2K .
	ouv = '' ifFalse: [ ^ ouv ] .
	ouv := self ouv2T .
	ouv = '' ifFalse: [ ^ ouv ] .
	ouv := self ouv2SA .
	ouv = '' ifFalse: [ ^ ouv ].
	ouv := self ouv1SA .
	ouv = '' ifFalse: [ ^ ouv ].
	ouv := self ouvPalier2 .
	ouv = '' ifFalse: [ ^ ouv ].
	" ouvertures non précises "
	ouv := self ouvPalier1 .
	ouv = '' ifFalse: [ ^ ouv ].
	ouv = ''
		ifFalse: [ ^ ouv ]
		ifTrue: [ ^ 'Passe' ]
]
