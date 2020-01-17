Class {
	#name : #ReInstanceVariableNameShouldBeAlphanumericRuleTest,
	#superclass : #ReCodeBasedTestCase,
	#category : #SmartRules
}

{ #category : #tests }
ReInstanceVariableNameShouldBeAlphanumericRuleTest >> testBasicCheck [

	self assert: (testClass critiques noneSatisfy: [ :critic | critic rule class = ReInstanceVariableNameShouldBeAlphanumericRule ]).
	
	testClass addInstVarNamed: 'time_of_day'.

	self assert: (testClass critiques anySatisfy: [ :critic | critic rule class = ReInstanceVariableNameShouldBeAlphanumericRule ])
]
