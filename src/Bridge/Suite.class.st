"
Je représente une suite de cartes de la même couleur
- leveesDeJeu, leveesDeDefense, perdantes, pointH, pointL, pointD
"
Class {
	#name : 'Suite',
	#superclass : 'OrderedCollection',
	#category : 'Bridge-Base',
	#package : 'Bridge',
	#tag : 'Base'
}

{ #category : 'accessing' }
Suite >> leveesDeDefense [

	^ (self leveesHonneur - (self size
		   caseOf: {
				   ([ 0 ] -> [ 0 ]).
				   ([ 1 ] -> [ 0 ]).
				   ([ 2 ] -> [ 0 ]).
				   ([ 3 ] -> [ 0 ]).
				   ([ 4 ] -> [ 0.5 ]).
				   ([ 5 ] -> [ 1 ]) }
		   otherwise: 10)) max: 0
]

{ #category : 'accessing' }
Suite >> leveesDeJeu [

	^ self leveesDeLongueur + self leveesHonneur min: self size
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

	| v1 v2 |
	v1 := self select: [ :c | #( 'A' 'R' 'D' 'V' 'X' ) includes: c nom ].
	v2 := self size - v1 size.
	^ v1 asString
		  caseOf: {
				  ([ '{ARDVX}' ] -> [ 5 ]).
				  ([ '{ARDV}' ] -> [ 4 ]).
				  ([ '{ARDX}' ] -> [ 3.5 ]).
				  ([ '{ARVX}' ] -> [ 3.5 ]).
				  ([ '{ADVX}' ] -> [ 3.5 ]).
				  ([ '{ARD}' ] -> [ 3.0 ]).
				  ([ '{ARV}' ] -> [ 2.5 ]).
				  ([ '{ARX}' ] -> [ 2.25 ]).
				  ([ '{ADV}' ] -> [ 2.5 ]).
				  ([ '{ADX}' ] -> [ 1.75 ]).
				  ([ '{AVX}' ] -> [ 1.75 ]).
				  ([ '{AR}' ] -> [ 2.0 ]).
				  ([ '{AD}' ] -> [ 1.5 ]).
				  ([ '{AV}' ] -> [
				   v2 > 0
					   ifTrue: [ 1.25 ]
					   ifFalse: [ 1.0 ] ]).
				  ([ '{AX}' ] -> [ 1.0 ]).
				  ([ '{A}' ] -> [ 1.0 ]).
				  ([ '{R}' ] -> [
				   v2 > 0
					   ifTrue: [ 0.5 ]
					   ifFalse: [ 0.0 ] ]).
				  ([ '{D}' ] -> [
				   v2 > 1
					   ifTrue: [ 0.25 ]
					   ifFalse: [ 0.0 ] ]).
				  ([ '{V}' ] -> [ 0.0 ]).
				  ([ '{X}' ] -> [ 0.0 ]).
				  ([ '{RDVX}' ] -> [ 3.0 ]).
				  ([ '{RDV}' ] -> [
				   v2 > 0
					   ifTrue: [ 2.5 ]
					   ifFalse: [ 2.0 ] ]).
				  ([ '{RDX}' ] -> [ 1.5 ]).
				  ([ '{RVX}' ] -> [ 1.5 ]).
				  ([ '{RD}' ] -> [
				   v2 > 0
					   ifTrue: [ 1.5 ]
					   ifFalse: [ 1.0 ] ]).
				  ([ '{RV}' ] -> [
				   v2 > 0
					   ifTrue: [ 0.75 ]
					   ifFalse: [ 0.5 ] ]).
				  ([ '{RX}' ] -> [ 0.5 ]).
				  ([ '{DVX}' ] -> [ 1.0 ]).
				  ([ '{DV}' ] -> [
				   v2 > 0
					   ifTrue: [ 0.75 ]
					   ifFalse: [ 0.0 ] ]).
				  ([ '{DX}' ] -> [
				   v2 > 1
					   ifTrue: [ 0.25 ]
					   ifFalse: [ 0.0 ] ]).
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

{ #category : 'accessing' }
Suite >> qualite [
	"evaluer la qualite
	chicane A AR ARD ARDV ARDVX -> 0
	9 99 999 9999 99999 -> 1
	"
	^ self isEmpty 
		  ifFalse: [ self size - self leveesDeJeu / self size ]
		  ifTrue: [ 0 ]
]
