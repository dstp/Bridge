"
(4432) ou (4333)
"
Class {
	#name : 'ReguliereSef',
	#superclass : 'Distribution',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'class tests' }
ReguliereSef >> estNonReguliere [

	^ false
]

{ #category : 'class tests' }
ReguliereSef >> estReguliere [

	^ true
]

{ #category : 'class tests' }
ReguliereSef >> estSemiReguliere [

	^ false
]

{ #category : 'accessing' }
ReguliereSef >> ouv1SA [

	^ (self main pointH between: 12 and: 14) ifTrue: [ self unSA ] ifFalse: [ '' ]
]

{ #category : 'accessing' }
ReguliereSef >> ouv2SA [ 

	^ (self main pointH between: 21 and: 22) ifTrue: [ self deuxSA ] ifFalse: [ '' ]
]

{ #category : 'accessing' }
ReguliereSef >> ouvPalier1 [

	^ self main pointH > 14
		  ifTrue: [ '1T' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
ReguliereSef >> ouvPalier2 [
	"jamais"

	^ ''
]
