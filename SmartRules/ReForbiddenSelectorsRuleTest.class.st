Class {
	#name : #ReForbiddenSelectorsRuleTest,
	#superclass : #ReCodeBasedTestCase,
	#category : #SmartRules
}

{ #category : #tests }
ReForbiddenSelectorsRuleTest >> testBasicCheckNil [
	
	| methodWithForbiddenSelector |
	
	self assert: (testMethod critiques noneSatisfy: [ :critic | critic rule class = ReForbiddenSelectorsRule  ]).
	
	methodWithForbiddenSelector := testClass >> (testClass compile: 'nil ^ self').
	
	self assert: (methodWithForbiddenSelector critiques anySatisfy: [ :critic | critic rule class = ReForbiddenSelectorsRule ])
]

{ #category : #tests }
ReForbiddenSelectorsRuleTest >> testBasicCheckSelf [
	
	| methodWithForbiddenSelector |
	
	self assert: (testMethod critiques noneSatisfy: [ :critic | critic rule class = ReForbiddenSelectorsRule  ]).
	
	methodWithForbiddenSelector := testClass >> (testClass compile: 'self ^ self').
	
	self assert: (methodWithForbiddenSelector critiques anySatisfy: [ :critic | critic rule class = ReForbiddenSelectorsRule ])
]

{ #category : #tests }
ReForbiddenSelectorsRuleTest >> testBasicCheckSuper [
	
	| methodWithForbiddenSelector |
	
	self assert: (testMethod critiques noneSatisfy: [ :critic | critic rule class = ReForbiddenSelectorsRule  ]).
	
	methodWithForbiddenSelector := testClass >> (testClass compile: 'super ^ self').
	
	self assert: (methodWithForbiddenSelector critiques anySatisfy: [ :critic | critic rule class = ReForbiddenSelectorsRule ])
]
