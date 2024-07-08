"
Bicolore 55 PT
"
Class {
	#name : 'NRB55PTSef',
	#superclass : 'NRB55Sef',
	#category : 'Bridge-Sef-Sef',
	#package : 'Bridge-Sef',
	#tag : 'Sef'
}

{ #category : 'accessing' }
NRB55PTSef >> ouvPalier1 [
	"avec 5 perdantes maximum, ouvrir de 1T"

	^ self main pointH > 9 "regle des 20"
		  ifTrue: [
			  self main perdantes < 6
				  ifTrue: [ '1T' ]
				  ifFalse: [ '1P' ] ]
		  ifFalse: [ '' ]
]
