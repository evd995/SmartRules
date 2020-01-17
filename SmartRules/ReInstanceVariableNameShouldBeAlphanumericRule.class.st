"
All instance variable names should only be alphanumeric. Please avoid using any other type of characters.
"
Class {
	#name : #ReInstanceVariableNameShouldBeAlphanumericRule,
	#superclass : #ReAbstractRule,
	#category : #SmartRules
}

{ #category : #'testing-interest' }
ReInstanceVariableNameShouldBeAlphanumericRule class >> checksClass [ 
	^ true
]

{ #category : #accessing }
ReInstanceVariableNameShouldBeAlphanumericRule >> basicCheck: aClass [ 

	^ aClass instVarNames anySatisfy: [ :each | each isAllAlphaNumerics not ]
]

{ #category : #accessing }
ReInstanceVariableNameShouldBeAlphanumericRule >> group [
	"Answer a human readable name of the rule."

	^ 'Coding Idiom Violation'
]

{ #category : #accessing }
ReInstanceVariableNameShouldBeAlphanumericRule >> name [
	"Answer a human readable name of the rule."

	^ 'Instance variable name should be alphanumeric'
]
