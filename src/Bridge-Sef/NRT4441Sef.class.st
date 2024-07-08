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
NRT4441Sef >> ouvPalier1 [

	^ self main pointH > 11
		  ifTrue: [ '1K' ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRT4441Sef >> ouvPalier2 [
	^ ''
]
