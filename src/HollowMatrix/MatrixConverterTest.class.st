Class {
	#name : #MatrixConverterTest,
	#superclass : #TestCase,
	#category : #HollowMatrix
}

{ #category : #tests }
MatrixConverterTest >> testConvertToSparseMatrix [

	| traditionalMatrix expectedSparseMatrix resultSparseMatrix converter |
	"Set up a 2D matrix"
	traditionalMatrix := { 
		                     { 1. 0. 0 }.
		                     { 0. 2. 0 }.
		                     { 0. 0. 3 } }.

	"Set up the expected sparse matrix"
	expectedSparseMatrix := { 
		                        { 1. 1. 1 }.
		                        { 2. 2. 2 }.
		                        { 3. 3. 3 } }.

	
	converter := MatrixConverter new.
	converter traditionalMatrix: traditionalMatrix.

	"Get the sparse matrix result"
	resultSparseMatrix := converter convertToSparseMatrix:
		                      traditionalMatrix.

	
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

    "Set up the expected matrix"
    expectedTraditionalMatrix := { 
        { 5. 0. 0. 0 }.
        { 0. 0. 10. 0 }.
        { 0. 15. 0. 0 } 
    }.

  
    converter := MatrixConverter new.

    resultTraditionalMatrix := converter convertToTraditionalMatrix: sparseMatrix.

    self assert: resultTraditionalMatrix equals: expectedTraditionalMatrix.
]

]
