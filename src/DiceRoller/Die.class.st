Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'sides'
	],
	#category : #DiceRoller
}

{ #category : #creation }
Die class >> withSides: anInteger [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
			
	| d |
	d := self new.
	d sides: anInteger.
	^d.
	
]

{ #category : #accessing }
Die >> initialize [ 
	super initialize.
	sides := 6.
]

{ #category : #mechanics }
Die >> maxValue [
	^sides.
]

{ #category : #accessing }
Die >> printOn: aStream [
	 super printOn: aStream.
	aStream nextPutAll: ' (d', sides printString, ')'.
]

{ #category : #mechanics }
Die >> roll [
	^sides atRandom.
]

{ #category : #accessing }
Die >> sides [

	^ sides
]

{ #category : #accessing }
Die >> sides: anObject [

	sides := anObject
]
