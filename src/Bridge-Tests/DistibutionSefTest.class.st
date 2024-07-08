Class {
	#name : 'DistibutionSefTest',
	#superclass : 'TestCase',
	#category : 'Bridge-Tests',
	#package : 'Bridge-Tests'
}

{ #category : 'tests' }
DistibutionSefTest >> testCreation [
	"
	la distribution d'une main est décrite par un objet de l'arbre Distribution
	"

	| m |
	m := Main new nom: 'Test'.
	m convention: 'Sef'.
	m cartesFromString: '{ARDVX98}{A832}{}{52}'.
	self assert: m pointHL equals: 17.
	self assert: m ouverture equals: '1P'.
	m cartesFromString: '{ARDX987}{X832}{}{52}'.
	self assert: m pointHL equals: 12.
	self assert: m ouverture equals: 'Passe'
]
