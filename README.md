# Pharo Exercise Documentation

## Overview

This repository contains two exercises implemented in Pharo as part of the task to experiment with the migration of Fortran code. The exercises include:

1. **Hollow Matrix Conversion**: Converts a traditional matrix to a sparse matrix (hollow matrix) and vice versa.
2. **Pharo Documentation Generator**: Generates documentation for Pharo classes and packages, similar to JavaDoc.

Each exercise is accompanied by a test class to ensure the correctness of the implemented functionalities.

---

## Exercise 1: Hollow Matrix Conversion

### Description

The `MatrixConverter` class provides functionality to:

- Convert a traditional matrix (2D array) into a sparse matrix.
- Convert a sparse matrix back into a traditional matrix.

**Sparse Matrix Representation**: An array of non-zero values with their positions (`row`, `column`, `value`).

---

### MatrixConverter Class

```smalltalk
Class MatrixConverter {
    name: 'MatrixConverter',
    superclass: 'Object',
    instVars: ['traditionalMatrix', 'sparseMatrix'],
    category: 'HollowMatrix'
}

# MatrixConverterTest - HollowMatrix

## Test Methods

### `testConvertToSparseMatrix`
Tests the conversion of a traditional matrix to a sparse matrix.

### `testConvertToTraditionalMatrix`
Tests the conversion of a sparse matrix back to a traditional matrix.

## Test Class: `MatrixConverterTest`

```smalltalk
Test Class MatrixConverterTest {
    name: 'MatrixConverterTest',
    superclass: 'TestCase',
    category: 'HollowMatrix'
}

Test Methods
testClassesInPackage: Ensures the correct classes are retrieved for a given package.
testDocumentClass: Verifies the correctness of the generated documentation for a single class.
testDocumentPackage: Ensures the documentation for an entire package is correctly generated.
smalltalk
Copy code
Test Class PharoDocTest {
    name: 'PharoDocTest',
    superclass: 'TestCase',
    category: 'PharoDoc'
}
Running the Tests
MatrixConverter Tests
To run the tests for the MatrixConverter class:

smalltalk
Copy code
testMatrixConverterTest
PharoDoc Tests
To run the tests for the PharoDoc class:

smalltalk
Copy code
testPharoDocTest
Installation
Install Pharo from the official Pharo website.
Clone this repository:
bash
Copy code
git clone <repository_url>
Load the project into Pharo.
Contribution
We welcome contributions to this repository! Feel free to:

Fork the repository.
Make changes or add new features.
Submit a pull request.
Note: Ensure all new features are thoroughly tested before submitting.

License
This repository is licensed under the MIT License. Feel free to use and modify the code.

