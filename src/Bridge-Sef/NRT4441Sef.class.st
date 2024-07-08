"
Tricolore 4441
"
Class {
	#name : 'NRT4441Sef',
	#superclass : 'NRTricoloreSef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
NRT4441Sef >> ouv1SA [
	""

	^ (self main pointH between: 12 and: 13)
		  ifTrue: [ self unSA ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRT4441Sef >> ouvPalier1 [

	^ self main pointH > 13
		  ifTrue: [ '1K' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRT4441Sef >> ouvPalier2 [
	^ ''
]
