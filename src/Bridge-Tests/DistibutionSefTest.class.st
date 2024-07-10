Class {
	#name : 'DistibutionSefTest',
	#superclass : 'TestCase',
	#category : 'Bridge-Tests',
	#package : 'Bridge-Tests'
}

{ #category : 'running' }
DistibutionSefTest >> setUp [

	super setUp.
	Carte cartesTest
]

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
	self assert: m ouverture equals: '1P'.
	m cartesFromString: '{ARX9872}{V832}{}{52}'.
	self assert: m pointHL equals: 11.
	self assert: m ouverture equals: 'Passe'.
	m cartesFromString: '{ARX9872}{}{V832}{52}'.
	self assert: m pointHL equals: 11.
	self assert: m ouverture equals: '4P'.
	m cartesFromString: '{ARX9872}{2}{V83}{52}'.
	self assert: m pointHL equals: 11.
	self assert: m ouverture equals: '3P'
]

{ #category : 'tests' }
DistibutionSefTest >> testLeveesDeJeu [
	"
	"
	| m | 
	m := Main new nom: 'Test'. 
	m convention: 'Sef'. 
		m cartesFromString: '{R}{D2}{D32}{ARDX987}'.
	self assert: m leveesDeJeu equals: 7.25.
		m cartesFromString: '{RX83}{AX942}{62}{X2}'.
	self assert: m leveesDeJeu equals: 3.5.
		m cartesFromString: '{R6}{RD985}{762}{V83}'.
	self assert: m leveesDeJeu equals: 3.5.
		m cartesFromString: '{X87}{74}{V762}{RDV7}'.
	self assert: m leveesDeJeu equals: 3.5.
		m cartesFromString: '{DX9865}{V642}{}{AV3}'.
	self assert: m leveesDeJeu equals: 5.0.
		m cartesFromString: '{A943}{D4}{9862}{RDV}'.
	self assert: m leveesDeJeu equals: 4.0.
		m cartesFromString: '{V872}{A}{V87642}{52}'.
	self assert: m leveesDeJeu equals: 4.5.
		m cartesFromString: '{643}{765}{RD96}{R92}'.
	self assert: m leveesDeJeu equals: 2.5.
		m cartesFromString: '{7}{DVX8}{RX8752}{V4}'.
	self assert: m leveesDeJeu equals: 5.0.
		m cartesFromString: '{ADV52}{2}{VX8}{AR54}'.
	self assert: m leveesDeJeu equals: 6.5.
		m cartesFromString: '{DX954}{A943}{}{RVX3}'.
	self assert: m leveesDeJeu equals: 5.25.
		m cartesFromString: '{62}{RDV}{AV64}{6432}'.
	self assert: m leveesDeJeu equals: 4.25.
		m cartesFromString: '{2}{87}{ADV6432}{762}'.
	self assert: m leveesDeJeu equals: 6.5.
		m cartesFromString: '{X86}{A862}{AX874}{X}'.
	self assert: m leveesDeJeu equals: 4.0.
		m cartesFromString: '{75}{X842}{953}{AD65}'.
	self assert: m leveesDeJeu equals: 2.5.
		m cartesFromString: '{A7}{V62}{AVX2}{X875}'.
	self assert: m leveesDeJeu equals: 3.75.
		m cartesFromString: '{2}{A752}{A83}{A9873}'.
	self assert: m leveesDeJeu equals: 5.0.
		m cartesFromString: '{65}{X8}{9854}{A9853}'.
	self assert: m leveesDeJeu equals: 3.0.
		m cartesFromString: '{AVX5}{AD94}{D2}{A74}'.
	self assert: m leveesDeJeu equals: 5.25.
		m cartesFromString: '{R53}{VX54}{98}{ARV5}'.
	self assert: m leveesDeJeu equals: 4.0.
		m cartesFromString: '{V3}{93}{AD97}{AD763}'.
	self assert: m leveesDeJeu equals: 5.0.
		m cartesFromString: '{74}{R963}{X763}{R93}'.
	self assert: m leveesDeJeu equals: 2.0.
		m cartesFromString: '{V6}{X765}{D73}{A975}'.
	self assert: m leveesDeJeu equals: 2.25.
		m cartesFromString: '{8643}{9842}{D8}{AV9}'.
	self assert: m leveesDeJeu equals: 2.25.
		m cartesFromString: '{AVX5}{V8765}{97}{D3}'.
	self assert: m leveesDeJeu equals: 3.75.
		m cartesFromString: '{98752}{V86}{X72}{A6}'.
	self assert: m leveesDeJeu equals: 2.5.
		m cartesFromString: '{42}{VX75}{943}{RD93}'.
	self assert: m leveesDeJeu equals: 2.5.
		m cartesFromString: '{AD95}{85}{A42}{V752}'.
	self assert: m leveesDeJeu equals: 3.5.
		m cartesFromString: '{DX98}{A96}{AV2}{AV6}'.
	self assert: m leveesDeJeu equals: 4.25.
		m cartesFromString: '{ARVX}{AX}{X532}{982}'.
	self assert: m leveesDeJeu equals: 5.5.
		m cartesFromString: '{D}{A873}{RX64}{RVX8}'.
	self assert: m leveesDeJeu equals: 4.5.
		m cartesFromString: '{764}{84}{RVX3}{R865}'.
	self assert: m leveesDeJeu equals: 3.0.
		m cartesFromString: '{985}{RDX74}{98}{V53}'.
	self assert: m leveesDeJeu equals: 3.0.
		m cartesFromString: '{D}{852}{AV83}{D8632}'.
	self assert: m leveesDeJeu equals: 3.5.
		m cartesFromString: '{R9}{V97}{AX873}{ADV}'.
	self assert: m leveesDeJeu equals: 5.5.
		m cartesFromString: '{982}{R873}{A8}{R743}'.
	self assert: m leveesDeJeu equals: 3.0.
		m cartesFromString: '{98432}{V6}{D7}{AX53}'.
	self assert: m leveesDeJeu equals: 3.0.
		m cartesFromString: '{V873}{V952}{D6}{DX9}'.
	self assert: m leveesDeJeu equals: 1.0.
		m cartesFromString: '{A4}{ARV8}{ARV4}{DV8}'.
	self assert: m leveesDeJeu equals: 7.75.
		m cartesFromString: '{DVX52}{R7}{RV7}{X87}'.
	self assert: m leveesDeJeu equals: 3.75.
		m cartesFromString: '{R64}{A7}{AV974}{742}'.
	self assert: m leveesDeJeu equals: 4.25.
		m cartesFromString: '{ARX754}{DV96}{}{A64}'.
	self assert: m leveesDeJeu equals: 7.5.
		m cartesFromString: '{8764}{AR7}{A3}{A632}'.
	self assert: m leveesDeJeu equals: 5.0.
		m cartesFromString: '{ARD3}{}{V97643}{AR8}'.
	self assert: m leveesDeJeu equals: 8.5.
		m cartesFromString: '{ARV52}{V9}{A76}{DX9}'.
	self assert: m leveesDeJeu equals: 5.0.
		m cartesFromString: '{X3}{V92}{AV7543}{A2}'.
	self assert: m leveesDeJeu equals: 5.25.
		m cartesFromString: '{2}{AD}{98752}{AX852}'.
	self assert: m leveesDeJeu equals: 5.5.
		m cartesFromString: '{V95}{DX93}{32}{RX76}'.
	self assert: m leveesDeJeu equals: 1.75.
		m cartesFromString: '{RD8}{8763}{A953}{V6}'.
	self assert: m leveesDeJeu equals: 3.5.
		m cartesFromString: '{X74}{X632}{D42}{AX7}'.
	self assert: m leveesDeJeu equals: 1.75.


]
