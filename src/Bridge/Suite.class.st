"
Je représente une suite de cartes de la même couleur
"
Class {
	#name : 'Suite',
	#superclass : 'OrderedCollection',
	#category : 'Bridge-Base',
	#package : 'Bridge',
	#tag : 'Base'
}

{ #category : 'accessing' }
Suite >> as [

	^ self select: [ :c | #( 'A' 'R' 'D' 'V' ) includes: c nom ]
]

{ #category : 'accessing' }
Suite >> leveesDeDefense [

	^ (self leveesHonneur - (self size - 3 max: 0)) max: 0
]

{ #category : 'accessing' }
Suite >> leveesDeJeu [

	^ self leveesDeLongueur + self leveesHonneur
]

{ #category : 'accessing' }
Suite >> leveesDeLongueur [
	"à revoir"

	^ self size
		  caseOf: {
				  ([ 4 ] -> [ 0.5 ]).
				  ([ 5 ] -> [ 1.5 ]) }
		  otherwise: (self size - 3 max: 0)
]

{ #category : 'accessing' }
Suite >> leveesHonneur [

	^ (self select: [ :c | #( 'A' 'R' 'D' 'V' 'X' ) includes: c nom ])
		  asString
		  caseOf: {
				  ([ '{ARDVX}' ] -> [ 3.5 ]).
				  ([ '{ARDV}' ] -> [ 3.5 ]).
				  ([ '{ARDX}' ] -> [ 3.0 ]).
				  ([ '{ARVX}' ] -> [ 2.5 ]).
				  ([ '{ADVX}' ] -> [ 3.5 ]).
				  ([ '{ARD}' ] -> [ 3.0 ]).
				  ([ '{ARV}' ] -> [ 2.5 ]).
				  ([ '{ARX}' ] -> [ 2.25 ]).
				  ([ '{ADV}' ] -> [ 2.5 ]).
				  ([ '{ADX}' ] -> [ 1.75 ]).
				  ([ '{AVX}' ] -> [ 1.75 ]).
				  ([ '{AR}' ] -> [ 2.0 ]).
				  ([ '{AD}' ] -> [ 1.5 ]).
				  ([ '{AV}' ] -> [ 1.0 ]).
				  ([ '{AX}' ] -> [ 1.0 ]).
				  ([ '{A}' ] -> [ 1.0 ]).
				  ([ '{R}' ] -> [ 0.5 ]).
				  ([ '{D}' ] -> [ 0.0 ]).
				  ([ '{V}' ] -> [ 0.0 ]).
				  ([ '{X}' ] -> [ 0.0 ]).
				  ([ '{RDVX}' ] -> [ 2.5 ]).
				  ([ '{RDV}' ] -> [ 2.5 ]).
				  ([ '{RDX}' ] -> [ 2.0 ]).
				  ([ '{RVX}' ] -> [ 1.5 ]).
				  ([ '{RD}' ] -> [ 1.0 ]).
				  ([ '{RV}' ] -> [ 0.5 ]).
				  ([ '{RX}' ] -> [ 0.5 ]).
				  ([ '{DVX}' ] -> [ 1.0 ]).
				  ([ '{DV}' ] -> [ 0.75 ]).
				  ([ '{DX}' ] -> [ 0.25 ]).
				  ([ '{VX}' ] -> [ 0.0 ]) }
		  otherwise: 0
]

{ #category : 'accessing' }
Suite >> nom [

	^ self className first asString
]

{ #category : 'accessing' }
Suite >> perdantes [

	| cs ph |
	cs := self select: [ :c | #( 'A' 'R' 'D' ) includes: c nom ] .
	ph := cs pointH .
 	^	(self size min: 3) caseOf: {
		([ 3 ] -> [ 3 - cs size ]).
		([ 1 ] -> [ ph = 4 ifTrue: [ 0 ] ifFalse: [ 1 ] ]).
		([ 2 ] -> [ ph = 7 ifTrue: [ 0 ] ifFalse: [ 
			ph > 2 ifTrue: [ 1 ] ifFalse: [ 2 ] ] ]).
		([ 0 ] -> 0) } 
]

{ #category : 'accessing' }
Suite >> pointD [

	^ self size
		  caseOf: {
				  ([ 0 ] -> [ 3 ]).
				  ([ 1 ] -> [ 2 ]).
				  ([ 2 ] -> [ 1 ]) }
		  otherwise: 0
]

{ #category : 'accessing' }
Suite >> pointH [

	^ self isEmpty ifTrue: [ 0 ] ifFalse: [ self sum ]
]

{ #category : 'accessing' }
Suite >> pointL [

	^ self isEmpty
		  ifTrue: [ 0 ]
		  ifFalse: [ (self size max: 4) - 4 ]
]

{ #category : 'printing' }
Suite >> printOn: aStream [

	aStream
		nextPutAll: '{';
		nextPutAll: (self sort reversed joinUsing: '');
		nextPutAll: '}'
]
