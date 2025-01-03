Class {
	#name : #MatrixConverter,
	#superclass : #Object,
	#instVars : [
		'traditionalMatrix',
		'sparseMatrix'
	],
	#category : #HollowMatrix
}

{ #category : #accessing }
MatrixConverter >> convertToSparseMatrix: aTraditionalMatrix [
    |  sparse |

    "Initialize an empty collection to store non-zero values."
    sparse := OrderedCollection new.

    "Iterate through the traditional matrix row by row."
    aTraditionalMatrix doWithIndex: [ :row :rowIndex |
        "Iterate through each value in the row."
        row doWithIndex: [ :value :colIndex |
            "If the value is not zero, add its position and value to the sparse matrix."
            value ~= 0 ifTrue: [
                sparse add: { rowIndex. colIndex. value } ] ] ].

    "Convert the collection to an array and return it."
    ^ sparse asArray

]

{ #category : #accessing }
MatrixConverter >> convertToTraditionalMatrix: aSparseMatrix [
    |   maxRow maxCol |

    "Find the maximum row and column indices."
    maxRow := 0.
    maxCol := 0.
    aSparseMatrix do: [ :entry | 
        maxRow := maxRow max: (entry at: 1).
        maxCol := maxCol max: (entry at: 2) ].

    "Create a traditional matrix filled with zeros."
    traditionalMatrix := Array new: maxRow withAll: [ 
        Array new: maxCol withAll: 0 ].

    "Fill the traditional matrix with values from the sparse matrix."
    aSparseMatrix do: [ :entry |
        | rowIndex colIndex value |
        rowIndex := entry at: 1.
        colIndex := entry at: 2.
        value := entry at: 3.
        (traditionalMatrix at: rowIndex) at: colIndex put: value ].

    "Return the traditional matrix."
    ^ traditionalMatrix

]

{ #category : #accessing }
MatrixConverter >> sparseMatrix [
	^sparseMatrix 
]

{ #category : #accessing }
MatrixConverter >> sparseMatrix: aSparseMatrix [ 
	sparseMatrix := aSparseMatrix 
]

{ #category : #accessing }
MatrixConverter >> traditionalMatrix [
	^traditionalMatrix
]

{ #category : #accessing }
MatrixConverter >> traditionalMatrix: aMatrix [
	traditionalMatrix := aMatrix 
]
