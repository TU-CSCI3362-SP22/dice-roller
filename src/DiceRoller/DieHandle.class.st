Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #DiceRoller
}

{ #category : #accessing }
DieHandle >> + anotherHandle [
	| handle |
	handle := self class new.
	dice do: [ :each | handle addDie: each ].
	anotherHandle dice do:  [ :each | handle addDie: each ].
	^ handle.
]

{ #category : #initialization }
DieHandle >> addDie: aDie [
	dice add: aDie.
]

{ #category : #accessing }
DieHandle >> dice [

	^ dice
]

{ #category : #accessing }
DieHandle >> dice: anObject [

	dice := anObject
]

{ #category : #initialization }
DieHandle >> initialize [ 
	super initialize .
	dice := OrderedCollection new.
]

{ #category : #initialization }
DieHandle >> roll [
	| x |
	x := 0.
	dice do: [ :each | x := x + each roll ].
	^x.
]
