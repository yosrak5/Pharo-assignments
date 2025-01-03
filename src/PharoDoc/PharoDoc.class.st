Class {
	#name : #PharoDoc,
	#superclass : #Object,
	#instVars : [
		'package'
	],
	#category : #PharoDoc
}

{ #category : #initialization }
PharoDoc >> classesInPackage: packageName [
    "Return all classes in a given package "
    
    |  classes |
    package := RPackageOrganizer default packageNamed: packageName.
    classes := package ifNotNil: [package classes] ifNil: [#()].
    
    classes do: [:each | Transcript show: each printString; cr].
    ^ classes

]

{ #category : #initialization }
PharoDoc >> documentClass: aClass [
    "Generates documentation for a given class "
    | doc |
    doc := Dictionary new.
    doc at: #className put: aClass name.
    doc at: #superclass put: (aClass superclass ifNil: ['None']) asString.
    doc at: #subclasses put: (aClass subclasses collect: [:sub | sub name]) asString.
    doc at: #instanceVariables put: (aClass allInstVarNames asString).
    doc at: #methods put: (aClass methodDictionary keys collect: [:method |
        | compiledMethod comment |
        compiledMethod := aClass compiledMethodAt: method ifAbsent: [nil].
        comment := compiledMethod ifNotNil: [compiledMethod comment] ifNil: ['No comment'].
        {method asString. comment} asString.
    ]) asString.
    ^ doc

]

{ #category : #initialization }
PharoDoc >> documentPackage: packageName [
    "Generated doc for all classes in a given package"
    | classes docs doc |
    classes := self classesInPackage:  packageName.
    docs := OrderedCollection new.
    classes do: [:cls |
       
        doc := self documentClass: cls.
        docs add: doc
    ].
    ^ docs

]

{ #category : #initialization }
PharoDoc >> initialize [ 
super initialize 
]
