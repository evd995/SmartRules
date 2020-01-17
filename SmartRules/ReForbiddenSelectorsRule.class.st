"
It is not allowed for methods to have the following selectors: 

	- self
	- super
	- nil
	- thisContext
	- true
	- false

These should be reserved for their default behavior (unless you really know what you are doing)
"
Class {
	#name : #ReForbiddenSelectorsRule,
	#superclass : #ReAbstractRule,
	#category : #SmartRules
}

{ #category : #'testing-interest' }
ReForbiddenSelectorsRule class >> checksMethod [
	^ true
]

{ #category : #accessing }
ReForbiddenSelectorsRule >> basicCheck: aMethod [ 

	^ self forbiddenSelectors includes: aMethod selector
]

{ #category : #helpers }
ReForbiddenSelectorsRule >> critiqueFor: anEntity [

	^ ReTrivialCritique
		withAnchor: (self anchorFor: anEntity)
		by: self
		hint: anEntity name
]

{ #category : #accessing }
ReForbiddenSelectorsRule >> forbiddenSelectors [

	^ #(#self #super #thisContext #true #false #nil) asIdentitySet
]

{ #category : #accessing }
ReForbiddenSelectorsRule >> name [
	"Answer a human readable name of the rule."

	^ 'Used a forbidden selector for a method'
]
