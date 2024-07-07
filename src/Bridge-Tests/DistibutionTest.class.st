Class {
	#name : 'DistibutionTest',
	#superclass : 'TestCase',
	#category : 'Bridge-Tests',
	#package : 'Bridge-Tests'
}

{ #category : 'running' }
DistibutionTest >> setUp [

	super setUp.
	Carte cartesTest
]

{ #category : 'tests' }
DistibutionTest >> testCreation [
	"
	la distribution d'une main est décrite par un objet de l'arbre suivant
	Distribution
		Reguliere
			R4333
				R4333P
				R4333C
				R4333K
				R4333T
			R4432
				R4432PK
				R4432PT
				R4432CK
				R4432CT
				R4432PC
				R4432KT
		SemiReguliere
			SR5332
				SR5332P
				SR5332C
				SR5332K
				SR5332T
		NonReguliere un unicolore de 6 cartes au moins sinon avec une courte 0-1
			NRUnicolore
			NRBicolore
				NRB55
					NRB55PC
					NRB55PK
					NRB55PT
					NRB55CK
					NRB55CT
					NRB55KT
				NRB5431
					NRB54PCKT
					NRB54PCTK
					NRB54PKCT
					NRB54PKTC
					NRB54PTCK
					NRB54PTCK
					NRB54CPKT
					NRB54CPTK
					NRB54CKPT
					NRB54CKTP
					NRB54CTPK
					NRB54CTKP
					NRB54KPCT
					NRB54KPTC
					NRB54KCPT
					NRB54KCTP
					NRB54KTPC
					NRB54KTCP
					NRB54TPCK
					NRB54TPKC
					NRB54TCPK
					NRB54TCKP
					NRB54TKPC
					NRB54TKCP
			NRTricolore					
				NRT4441
					NRT4441P
					NRT4441C
					NRT4441K
					NRT4441T
				NRT5440
					NRTPCK
					NRTPCT
					NRTPKT
					NRTCPK
					NRTCPT
					NRTCKT
					NRTKPC
					NRTKPT
					NRTKCT
					NRTTPC
					NRTTPK
					NRTTCK			
	"

	| m |
	m := Main new nom: 'Test'.
	"4441 12-13"
	m cartesFromString: '{A}{A832}{XD45}{DV45}'.
	self assert: m ouverture equals: '1SA'.
	m cartesFromString: '{A832}{XD45}{D345}{A}'.
	self assert: m ouverture equals: '1SA'.
	m cartesFromString: '{A832}{A}{XD45}{D345}'.
	self assert: m ouverture equals: '1SA'.
	m cartesFromString: '{A832}{XD45}{A}{D345}'.
	self assert: m ouverture equals: '1SA'.
	" 4441 18"
	m cartesFromString: '{A}{A832}{AD45}{A345}'.
	self assert: m ouverture equals: '1K'.
	m cartesFromString: '{A832}{AD45}{A345}{A}'.
	self assert: m ouverture equals: '1K'.
	m cartesFromString: '{A832}{A}{AD45}{A345}'.
	self assert: m ouverture equals: '1K'.
	m cartesFromString: '{A832}{AD45}{A}{A345}'.
	self assert: m ouverture equals: '1T'.
	"4441 11"
	m cartesFromString: '{A832}{VX45}{A}{D345}'.
	self assert: m ouverture equals: 'Passe'.
	m cartesFromString: '{A832}{VX45}{D345}{A}'.
	self assert: m ouverture equals: 'Passe'.
	m cartesFromString: '{A832}{A}{VX45}{D345}'.
	self assert: m ouverture equals: 'Passe'.
	m cartesFromString: '{A}{A832}{VX45}{D345}'.
	self assert: m ouverture equals: 'Passe'.
	"4441 14"
	m cartesFromString: '{AD32}{XD45}{A}{D345}'.
	self assert: m ouverture equals: '1T'.
	m cartesFromString: '{A832}{RV45}{D345}{A}'.
	self assert: m ouverture equals: '1K'.
	m cartesFromString: '{A8329}{RV5}{D35}{A5}'.
	self assert: m ouverture equals: '1SA'.
	m cartesFromString: '{22222}{2222}{AR}{AR}'.
	self assert: m ouverture equals: '1P'.

	m cartesFromString: '{8329}{RV5}{35}{A865}'. "4432 8"
	self assert: m ouverture equals: 'Passe'.
	m cartesFromString: '{2222}{22222}{AD}{AD}'. "5422 12-14 les 2 majeures"
	self assert: m ouverture equals: '1C'.
	m cartesFromString: '{22}{22222}{AD22}{AD}'. "5422 12-14"
	self assert: m ouverture equals: '1SA'.
	m cartesFromString: '{22}{222222}{AD2}{A2}'. "6322 10-13"
	self assert: m ouverture equals: '2C'.
	m cartesFromString: '{2}{22222}{AD2}{A222}'. "5431 10-13"
	self assert: m ouverture equals: '2C'.
	m cartesFromString: '{22}{A22222}{AD2}{A2}'. "6322 14+"
	self assert: m ouverture equals: '1C'.
	m cartesFromString: '{22}{AD2}{A2}{A22222}'. "6322 14+"
	self assert: m ouverture equals: '1T'.
	m cartesFromString: '{2}{A2222}{AD22}{A22}'. "5431 14+"
	self assert: m ouverture equals: '1C'.
	m cartesFromString: '{A2222}{AD22}{A22}{2}'. "5431 14+ les 2 majeures"
	self assert: m ouverture equals: '1P'.
	m cartesFromString: '{A2222}{A222}{A22}{2}'. "5431 11-13 les 2 majeures"
	self assert: m ouverture equals: '1P'.
	m cartesFromString: '{A2222}{A222}{A2}{22}'. "5422 12-14 les 2 majeures"
	self assert: m ouverture equals: '1P'.
	m cartesFromString: '{A2222}{A2}{A22}{R22}'. "main semi reguliere de 15+"
	self assert: m ouverture equals: '1P'.
	m cartesFromString: '{A2}{A22}{A2222}{R22}'. "main semi reguliere de 15+"
	self assert: m ouverture equals: '1K'.
	m cartesFromString: '{A2222}{A2}{A22}{R22}'. "main semi reguliere 5332 de 15+"
	self assert: m ouverture equals: '1P'.
	m cartesFromString: '{A2222}{A332}{A2}{R2}'. "main semi reguliere 54 Majeur de 15+"
	self assert: m ouverture equals: '1P'.
	m cartesFromString: '{A222}{A22}{A22}{R22}'. "main reguliere 4333 de 15+"
	self assert: m ouverture equals: '1T'.

]
