"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestBridge',
	#superclass : 'PackageManifest',
	#category : 'Bridge-Manifest',
	#package : 'Bridge',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestBridge class >> ruleLongMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Main #distribution #false)) #'2024-07-03T18:13:15.250934+02:00') )
]
