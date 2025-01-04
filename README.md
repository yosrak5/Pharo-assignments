# Pharo Exercises

This repository contains two Pharo exercises:

1. **Hollow Matrix Conversion**: A program that converts a traditional matrix to a sparse (hollow) matrix and vice versa.
2. **Pharo Documentation Generator**: A program that generates documentation for Pharo classes and packages (similar to JavaDoc).

Both exercises include test classes to ensure the correctness of the functionalities.

---

## Exercise 1: Hollow Matrix Conversion

### Overview

The `MatrixConverter` class provides methods to convert a traditional matrix (2D array) to a sparse matrix and vice versa. A sparse matrix only stores non-zero values along with their positions (row, column).

### MatrixConverter Class

```smalltalk
Class MatrixConverter {
    name: 'MatrixConverter',
    superclass: 'Object',
    instVars: ['traditionalMatrix', 'sparseMatrix'],
    category: 'HollowMatrix'
}
