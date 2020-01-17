Class {
	#name : #ReSelectorStartsWithUppercaseRuleTest,
	#superclass : #ReCodeBasedTestCase,
	#category : #SmartRules
}

{ #category : #tests }
ReSelectorStartsWithUppercaseRuleTest >> testBasicCheck [
	
	| methodWithForbiddenSelector |
	
	self assert: (testMethod critiques noneSatisfy: [ :critic | critic rule class = ReSelectorStartsWithUppercaseRule  ]).
	
	methodWithForbiddenSelector := testClass >> (testClass compile: 'TestMethod ^ self').
	
	self assert: (methodWithForbiddenSelector critiques anySatisfy: [ :critic | critic rule class = ReSelectorStartsWithUppercaseRule ])
]
