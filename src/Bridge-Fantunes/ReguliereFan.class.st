"
(4432) ou (4333)
"
Class {
	#name : 'ReguliereFan',
	#superclass : 'ConventionFantunes',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'class tests' }
ReguliereFan >> estNonReguliere [

	^ false
]

{ #category : 'class tests' }
ReguliereFan >> estReguliere [

	^ true
]

{ #category : 'class tests' }
ReguliereFan >> estSemiReguliere [

	^ false
]

{ #category : 'accessing' }
ReguliereFan >> ouv1SA [

	^ (self main pointH between: 12 and: 14) ifTrue: [ self unSA ] ifFalse: [ '' ]
]

{ #category : 'accessing' }
ReguliereFan >> ouv2SA [ 

	^ (self main pointH between: 21 and: 22) ifTrue: [ self deuxSA ] ifFalse: [ '' ]
]

{ #category : 'accessing' }
ReguliereFan >> ouvPalier1 [

	^ self main pointH > 14
		  ifTrue: [ '1T' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
ReguliereFan >> ouvPalier2 [
	"jamais"

	^ ''
]
