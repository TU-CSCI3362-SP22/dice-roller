Class {
	#name : #DieTests,
	#superclass : #TestCase,
	#category : #DiceRoller
}

{ #category : #tests }
DieTests >> testDieCreation [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| d |
	d := Die new.
	self assert: d sides equals: 6.
]

{ #category : #tests }
DieTests >> testDieRolling [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| d |
	d := Die new.
	10 timesRepeat: [ self assert: ((d roll) between: 1 and: 6) ].
]
