"
Tricolore singleton K
"
Class {
	#name : 'NRT4441K',
	#superclass : 'NRT4441',
	#category : 'Bridge-Fantunes-Fantunes',
	#package : 'Bridge-Fantunes',
	#tag : 'Fantunes'
}

{ #category : 'accessing' }
NRT4441K >> ouvPalier1 [

	^ self main pointH > 13
		  ifTrue: [ '1T' ]
		  ifFalse: [ '' ]
]
