"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestBridgeSef',
	#superclass : 'PackageManifest',
	#category : 'Bridge-Sef-Manifest',
	#package : 'Bridge-Sef',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestBridgeSef class >> ruleLongMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#ConventionSef #ouverture #false)) #'2024-07-09T00:07:07.550455+02:00') )
]
