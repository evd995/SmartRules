Class {
	#name : #ReSelectorStartsWithUppercaseRule,
	#superclass : #ReAbstractRule,
	#category : #SmartRules
}

{ #category : #'testing-interest' }
ReSelectorStartsWithUppercaseRule class >> checksMethod [
	^ true
]

{ #category : #running }
ReSelectorStartsWithUppercaseRule >> basicCheck: aMethod [ 

	^ aMethod selector first isUppercase 
]

{ #category : #running }
ReSelectorStartsWithUppercaseRule >> critiqueFor: anEntity [

	^ ReTrivialCritique
		withAnchor: (self anchorFor: anEntity)
		by: self
		hint: anEntity selector asString 
]

{ #category : #running }
ReSelectorStartsWithUppercaseRule >> name [
	"Answer a human readable name of the rule."

	^ 'Method selectors should not start with uppercase'
]
