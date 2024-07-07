"
Présente une hiérarchie des différentes distributions
"
Class {
	#name : 'Distribution',
	#superclass : 'Object',
	#instVars : [
		'main'
	],
	#category : 'Bridge-Base',
	#package : 'Bridge',
	#tag : 'Base'
}

{ #category : 'accessing' }
Distribution >> deuxPalier [
	"la plus chère"

	^ '2' , self main laPlusLongue
]

{ #category : 'accessing' }
Distribution >> deuxSA [

	^ '2SA'
]

{ #category : 'class tests' }
Distribution >> estNonReguliere [

	^ self shouldBeImplemented
]

{ #category : 'class tests' }
Distribution >> estReguliere [

	^ self shouldBeImplemented
]

{ #category : 'class tests' }
Distribution >> estSemiReguliere [

	^ self shouldBeImplemented
]

{ #category : 'accessing' }
Distribution >> main [
	^ main
]

{ #category : 'accessing' }
Distribution >> main: aMain [
	main := aMain
]

{ #category : 'accessing' }
Distribution >> ouv1SA [

	^ self shouldBeImplemented
]

{ #category : 'accessing' }
Distribution >> ouv2SA [

	^ self shouldBeImplemented
]

{ #category : 'accessing' }
Distribution >> ouvPalier1 [

	^ self shouldBeImplemented
]

{ #category : 'accessing' }
Distribution >> ouvPalier2 [

	^ self shouldBeImplemented
]

{ #category : 'accessing' }
Distribution >> ouverture [

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
	ouv = '' ifFalse: [ ^ ouv ] ifTrue: [ ^ 'Passe' ]
]

{ #category : 'accessing' }
Distribution >> unPalier [
	"la plus chère"

	^ '1' , self main laPlusLongue
]

{ #category : 'accessing' }
Distribution >> unSA [

	^ '1SA'
]
