"
Tricolore singleton K
"
Class {
	#name : 'NRT4441KFan',
	#superclass : 'NRT4441Fan',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'accessing' }
NRT4441KFan >> ouvPalier1 [

	^ self main pointH > 13
		  ifTrue: [ '1T' ]
		  ifFalse: [ '' ]
]
