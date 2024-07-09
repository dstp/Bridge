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
ConventionSef >> coulPalier1 [ 

	^ self shouldBeImplemented 
]

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
ConventionSef >> ouvPalier1 [

	^ ((self main pointHL > 12 or: [ self main pointH > 11 ]) and: [
		   self main pointHL < 24 ])
		  ifTrue: [ '1' , self coulPalier1 ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
ConventionSef >> ouvPalier2 [
	""

	^ ''
]

{ #category : 'accessing' }
ConventionSef >> ouvPalier3 [
	""

	^ ''
]

{ #category : 'accessing' }
ConventionSef >> ouvPalier4 [
	""

	^ ''
]

{ #category : 'accessing' }
ConventionSef >> ouvPalier5 [
	""

	^ ''
]

{ #category : 'accessing' }
ConventionSef >> ouvPalier6 [
	""

	^ ''
]

{ #category : 'accessing' }
ConventionSef >> ouvPalier7 [
	""

	^ ''
]

{ #category : 'accessing' }
ConventionSef >> ouverture [

	| ouv |
	" ouvertures précises manquent les barrages aux paliers 3 et supérieurs "
	ouv := self ouv2K.
	ouv = '' ifFalse: [ ^ ouv ].
	ouv := self ouv2T.
	ouv = '' ifFalse: [ ^ ouv ].
	ouv := self ouv2SA.
	ouv = '' ifFalse: [ ^ ouv ].
	ouv := self ouv1SA.
	ouv = '' ifFalse: [ ^ ouv ].
	ouv := self ouvPalier2.
	ouv = '' ifFalse: [ ^ ouv ].
	ouv := self ouvPalier3.
	ouv = '' ifFalse: [ ^ ouv ].
	ouv := self ouvPalier4.
	ouv = '' ifFalse: [ ^ ouv ].
	ouv := self ouvPalier5.
	ouv = '' ifFalse: [ ^ ouv ].
	ouv := self ouvPalier6.
	ouv = '' ifFalse: [ ^ ouv ].
	" ouvertures non précises "
	ouv := self ouvPalier1.
	ouv = ''
		ifFalse: [ ^ ouv ]
		ifTrue: [ ^ 'Passe' ]
]
