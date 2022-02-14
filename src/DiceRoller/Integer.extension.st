Extension { #name : #Integer }

{ #category : #'*DiceRoller' }
Integer >> D10 [
	^self D: 10.
]

{ #category : #'*DiceRoller' }
Integer >> D4 [
	^self D: 4.
]

{ #category : #'*DiceRoller' }
Integer >> D6 [
	^self D: 6.
]

{ #category : #'*DiceRoller' }
Integer >> D8 [
	^self D: 8.
]

{ #category : #'*DiceRoller' }
Integer >> D: sides [
	| handle |
	handle := DieHandle new.
	self timesRepeat: [handle addDie: (Die withSides: sides)].
	^handle.
]
