"
Tricolore 4441
"
Class {
	#name : 'NRT4441Fan',
	#superclass : 'NRTricoloreFan',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'accessing' }
NRT4441Fan >> ouv1SA [
	""

	^ (self main pointH between: 12 and: 13)
		  ifTrue: [ self unSA ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRT4441Fan >> ouvPalier1 [

	^ self main pointH > 13
		  ifTrue: [ '1K' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRT4441Fan >> ouvPalier2 [
	^ ''
]
