Class {
	#name : #Dice,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #DiceRoller
}

{ #category : #accessing }
Dice >> + anotherHandle [
	| handle |
	handle := self class new.
	dice do: [ :each | handle add: each ].
	anotherHandle class = self class ifTrue: [ 
			anotherHandle dice do:  [ :each | handle add: each ].
			].
	anotherHandle class = Die ifTrue: [ handle add: anotherHandle ].
	^ handle.
]

{ #category : #initialization }
Dice >> add: aDie [
	dice add: aDie.
]

{ #category : #accessing }
Dice >> dice [

	^ dice
]

{ #category : #accessing }
Dice >> dice: anObject [

	dice := anObject
]

{ #category : #initialization }
Dice >> initialize [ 
	super initialize .
	dice := OrderedCollection new.
]

{ #category : #mechanics }
Dice >> maxValue [
	dice isEmpty ifTrue: [ ^0 ].
	^ (dice collect: [ :each | each maxValue]) sum.
]

{ #category : #initialization }
Dice >> roll [
	dice isEmpty ifTrue: [ ^0 ].
	^ (dice collect: [ :each | each roll ]) sum.
]
