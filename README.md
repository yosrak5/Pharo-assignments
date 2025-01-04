# Task Documentation: Pharo Exercises for Fortran Code Migration

## Overview

This repository contains two exercises, implemented in Pharo, as part of the task to experiment with the migration of Fortran code. The exercises demonstrate different aspects of the migration process and include tests to validate the functionalities.

### Exercises

1. **Hollow Matrix Conversion**
   - A program that converts a traditional matrix to a sparse matrix (hollow matrix) and vice versa.
   
2. **Pharo Documentation Generator**
   - A program that generates documentation for Pharo classes and packages, similar to JavaDoc.

Each exercise is accompanied by a **test class** that ensures the correctness of the implemented functionalities.

## Exercise 1: Hollow Matrix Conversion

### Description
The `MatrixConverter` class provides functionality to convert a traditional matrix (2D array) into a sparse (hollow) matrix and vice versa. 

- **`convertToSparseMatrix:`** Converts a traditional matrix to a sparse matrix representation.
- **`convertToTraditionalMatrix:`** Converts a sparse matrix back into a traditional matrix.

### MatrixConverter Class

The `MatrixConverter` class handles the conversion between traditional and sparse matrix formats. Below is the class definition:

```smalltalk
Class MatrixConverter {
    name: 'MatrixConverter',
    superclass: 'Object',
    instVars: ['traditionalMatrix', 'sparseMatrix'],
    category: 'HollowMatrix'
}
```
### Methods

1. **`convertToSparseMatrix: aTraditionalMatrix`**
   - Converts a traditional matrix into a sparse matrix representation.
   
2. **`convertToTraditionalMatrix: aSparseMatrix`**
   - Converts a sparse matrix back into a traditional matrix.
   
3. **`sparseMatrix`**
   - Returns the current sparse matrix.
   
4. **`sparseMatrix: aSparseMatrix`**
   - Sets a new sparse matrix.

5. **`traditionalMatrix`**
   - Returns the current traditional matrix.
   
6. **`traditionalMatrix: aMatrix`**
   - Sets a new traditional matrix.

---
### Test Screenshots 
## Test Class: MatrixConverterTest

The `MatrixConverterTest` class verifies that the methods in the `MatrixConverter` class work correctly.

### Test Methods

- **`testConvertToSparseMatrix:`**
   - Tests the conversion from a traditional matrix to a sparse matrix.

- **`testConvertToTraditionalMatrix:`**
   - Tests the conversion from a sparse matrix to a traditional matrix.

### MatrixConverterTest Class

The `MatrixConverterTest` class is a unit test class that ensures the correctness of the `MatrixConverter` methods. Below is the class definition:

```smalltalk
Test Class MatrixConverterTest {
    name: 'MatrixConverterTest',
    superclass: 'TestCase',
    category: 'HollowMatrix'
}
```
## Exercise 2: Pharo Documentation Generator

### Description
The `PharoDoc` class generates documentation for Pharo classes and packages, mimicking the functionality of JavaDoc but specifically for the Pharo environment.

- **`classesInPackage: packageName`**: Returns all classes in a given package.
- **`documentClass: aClass`**: Generates documentation for a single class, including its superclass, subclasses, instance variables, and methods.
- **`documentPackage: packageName`**: Generates documentation for all classes in a package.

### PharoDoc Class

The `PharoDoc` class generates structured documentation for Pharo classes and packages. Below is the class definition:

```smalltalk
Class PharoDoc {
    name: 'PharoDoc',
    superclass: 'Object',
    instVars: ['package'],
    category: 'PharoDoc'
}
```
### Methods

1. **`classesInPackage: packageName`**
   - Retrieves and lists all classes in the specified package.

2. **`documentClass: aClass`**
   - Documents the given class, including details such as its superclass, subclasses, instance variables, and methods.

3. **`documentPackage: packageName`**
   - Documents all the classes within a specified package.
## Test Class: PharoDocTest

The `PharoDocTest` class verifies the functionality of the `PharoDoc` class.

### Test Methods

- **`testClassesInPackage:`**
   - Tests the `classesInPackage:` method to ensure that the correct classes are retrieved.

- **`testDocumentClass:`**
   - Tests the `documentClass:` method to ensure that the documentation for a class is correctly generated.

- **`testDocumentPackage:`**
   - Tests the `documentPackage:` method to verify that the documentation for an entire package is correctly generated.
## Test Class: PharoDocTest

The `PharoDocTest` class verifies the functionality of the `PharoDoc` class.

### Test Methods

- **`testClassesInPackage:`**
   - Tests the `classesInPackage:` method to ensure that the correct classes are retrieved.

- **`testDocumentClass:`**
   - Tests the `documentClass:` method to ensure that the documentation for a class is correctly generated.

- **`testDocumentPackage:`**
   - Tests the `documentPackage:` method to verify that the documentation for an entire package is correctly generated.

### PharoDocTest Class

```smalltalk
Test Class PharoDocTest {
    name: 'PharoDocTest',
    superclass: 'TestCase',
    category: 'PharoDoc'
}
```
## Running the Tests

1. **MatrixConverter Tests**:
   To run the tests for the `MatrixConverter` class:

   ```smalltalk
   testMatrixConverterTest
## Installation

To run the code and tests , Clone this repository:

   ```bash
   git clone https://github.com/yosrak5/Pharo-assignments.git
```


