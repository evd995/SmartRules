Class {
	#name : #ReSelectorShouldBeAlphanumericRule,
	#superclass : #ReAbstractRule,
	#category : #SmartRules
}

{ #category : #'testing-interest' }
ReSelectorShouldBeAlphanumericRule class >> checksMethod [ 
	^ true
]

{ #category : #accessing }
ReSelectorShouldBeAlphanumericRule >> basicCheck: aMethod [ 

	^ aMethod selector isAllAlphaNumerics not
]

{ #category : #accessing }
ReSelectorShouldBeAlphanumericRule >> group [
	"Answer a human readable name of the rule."

	^ 'Coding Idiom Violation'
]

{ #category : #accessing }
ReSelectorShouldBeAlphanumericRule >> name [
	"Answer a human readable name of the rule."

	^ 'Method selector should be alphanumeric'
]
