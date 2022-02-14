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
	dice do: [ :each | handle addDie: each ].
	anotherHandle dice do:  [ :each | handle addDie: each ].
	^ handle.
]

{ #category : #initialization }
Dice >> addDie: aDie [
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

{ #category : #initialization }
Dice >> roll [
	| x |
	x := 0.
	dice do: [ :each | x := x + each roll ].
	^x.
]
