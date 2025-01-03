Class {
	#name : #MatrixConverterTest,
	#superclass : #TestCase,
	#category : #HollowMatrix
}

{ #category : #tests }
MatrixConverterTest >> testConvertToSparseMatrix [

	| traditionalMatrix expectedSparseMatrix resultSparseMatrix converter |
	"Set up a traditional matrix"
	traditionalMatrix := { 
		                     { 1. 0. 0 }.
		                     { 0. 2. 0 }.
		                     { 0. 0. 3 } }.

	"Set up the expected sparse matrix"
	expectedSparseMatrix := { 
		                        { 1. 1. 1 }.
		                        { 2. 2. 2 }.
		                        { 3. 3. 3 } }.

	"Create a MatrixConverter instance"
	converter := MatrixConverter new.
	converter traditionalMatrix: traditionalMatrix.

	"Get the sparse matrix result"
	resultSparseMatrix := converter convertToSparseMatrix:
		                      traditionalMatrix.

	"Test the expected and actual results"
	self assert: resultSparseMatrix equals: expectedSparseMatrix
]

{ #category : #tests }
MatrixConverterTest >> testConvertToTraditionalMatrix [ [
    | sparseMatrix expectedTraditionalMatrix resultTraditionalMatrix converter |

    "Set up a sparse matrix"
    sparseMatrix := #(
        #(1 1 5)
        #(2 3 10)
        #(3 2 15)
    ).

    "Set up the expected traditional matrix"
    expectedTraditionalMatrix := { 
        { 5. 0. 0. 0 }.
        { 0. 0. 10. 0 }.
        { 0. 15. 0. 0 } 
    }.

    "Create a MatrixConverter instance"
    converter := MatrixConverter new.

    "Call the method with the correct argument"
    resultTraditionalMatrix := converter convertToTraditionalMatrix: sparseMatrix.

    "Assert the result"
    self assert: resultTraditionalMatrix equals: expectedTraditionalMatrix.
]

]
