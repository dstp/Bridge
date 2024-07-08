"
M(54)(31)
"
Class {
	#name : 'NRB54MajeurSef',
	#superclass : 'NRB5431Sef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
NRB54MajeurSef >> ouvPalier1 [

	^ self main pointH > 10
		  ifTrue: [ self unPalier ]
		  ifFalse: [ '' ]
]

{ #category : 'accessing' }
NRB54MajeurSef >> ouvPalier2 [ 

	^ ''
]
