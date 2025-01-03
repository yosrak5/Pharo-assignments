Class {
	#name : #PharoDocTest,
	#superclass : #TestCase,
	#category : #PharoDoc
}

{ #category : #tests }
PharoDocTest >> testClassesInPackage [
"a test method for classesInPackage"
    | classes |
    
    
    classes := PharoDoc new classesInPackage: 'Zinc-HTTP'.
    
    
    classes do: [:each | Transcript show: each printString; cr].
    
    
    self assert: classes notEmpty.
]

{ #category : #tests }
PharoDocTest >> testDocumentClass [
"a test method for DocumentClass: "
    | doc generator |
    generator := PharoDoc new.
    doc := generator documentClass: Object.
    self assert: (doc at: #className) equals: 'Object'.
    self assert: (doc at: #superclass) equals: 'ProtoObject'.
    self assert: (doc at: #methods) notEmpty.
]

{ #category : #tests }
PharoDocTest >> testDocumentPackage [
    "Test the documentPackage: method"
    
    | packageName docs |
    
   
    packageName := 'Zinc-HTTP'.
    

    docs := PharoDoc new documentPackage: packageName.
    

    self assert: (docs isKindOf: OrderedCollection).

    
  
    self assert: (docs size > 0).
    

    self assert: (docs first at: #className ifAbsent: [ nil ]) isNotNil.
    

    self assert: (docs first at: #methods ifAbsent: [ nil ]) isNotNil.
]
