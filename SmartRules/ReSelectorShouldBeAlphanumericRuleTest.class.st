Class {
	#name : #ReSelectorShouldBeAlphanumericRuleTest,
	#superclass : #ReCodeBasedTestCase,
	#category : #SmartRules
}

{ #category : #tests }
ReSelectorShouldBeAlphanumericRuleTest >> testBasicCheck [

	| methodWithForbiddenSelector |
	
	self assert: (testMethod critiques noneSatisfy: [ :critic | critic rule class = ReSelectorShouldBeAlphanumericRule ]).
	
	methodWithForbiddenSelector := testClass >> (testClass compile: 'test_method ^ self').

	self assert: (methodWithForbiddenSelector critiques anySatisfy: [ :critic | critic rule class = ReSelectorShouldBeAlphanumericRule ])
]
