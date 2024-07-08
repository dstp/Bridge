"
Tricolore singleton K
"
Class {
	#name : 'NRT4441KSef',
	#superclass : 'NRT4441Sef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
NRT4441KSef >> ouvPalier1 [

	^ self main pointH > 11
		  ifTrue: [ '1T' ]
		  ifFalse: [ '' ]
]
