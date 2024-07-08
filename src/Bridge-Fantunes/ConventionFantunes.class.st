"
Système d'enchères Fantunes
"
Class {
	#name : 'ConventionFantunes',
	#superclass : 'Distribution',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'accessing' }
ConventionFantunes >> ouverture [

	| pH ouv |
	pH := self main pointH.
	(pH between: 0 and: 9) ifTrue: [ ^ 'Passe' ].
	(pH between: 10 and: 13) ifTrue: [
		ouv := self ouvPalier2.
		ouv = '' ifFalse: [ ^ ouv ] ].
	(pH between: 12 and: 14) ifTrue: [
		ouv := self ouv1SA.
		ouv = '' ifFalse: [ ^ ouv ] ].
	(pH between: 21 and: 22) ifTrue: [
		ouv := self ouv2SA.
		ouv = '' ifFalse: [ ^ ouv ] ].
	ouv := self ouvPalier1.
	ouv = ''
		ifFalse: [ ^ ouv ]
		ifTrue: [ ^ 'Passe' ]
]
