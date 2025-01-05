# Task Documentation

## Overview

This repository contains two exercises implemented in Pharo, as part of the requested task. The exercises focus on different aspects of the programming process and include test cases to validate the correctness of the functionalities.

### Exercises

1. **Hollow Matrix Conversion**
   - A program that converts a traditional matrix (array of arrays) to a sparse matrix (hollow matrix) and vice versa. The hollow matrix representation stores only non-zero elements along with their respective indices, providing a memory-efficient solution for sparse data.
   
2. **Pharo Documentation Generator**
   - A program that generates documentation for Pharo classes and packages, similar to JavaDoc. The generated documentation includes class information such as the superclass, subclasses, instance variables, and methods with available comments.


## Exercise 1: Hollow Matrix Conversion

### Description
The `MatrixConverter` class provides functionality to convert a traditional matrix (2D array) into a sparse (hollow) matrix and vice versa. 

- **`convertToSparseMatrix:`** Converts a traditional matrix to a sparse matrix representation.
- **`convertToTraditionalMatrix:`** Converts a sparse matrix back into a traditional matrix.

### MatrixConverter Class

The `MatrixConverter` class handles the conversion between traditional and sparse matrix formats. Below is the class definition:

```smalltalk
Object subclass: #MatrixConverter
	instanceVariableNames: 'traditionalMatrix sparseMatrix'
	classVariableNames: ''
	package: 'HollowMatrix'
```
### Methods

1. **`convertToSparseMatrix: aTraditionalMatrix`**
   - Converts a traditional matrix into a sparse matrix representation.
   
2. **`convertToTraditionalMatrix: aSparseMatrix`**
   - Converts a sparse matrix back into a traditional matrix.

---
### MatrixConverterTest Class

The `MatrixConverterTest` class is a unit test class that ensures the correctness of the `MatrixConverter` methods. Below is the class definition:

```smalltalk
TestCase subclass: #MatrixConverterTest
	instanceVariableNames: ''
	classVariableNames: ''
	package: 'HollowMatrix'
```
![image](https://github.com/user-attachments/assets/5b4b8135-8d10-49d5-878c-3959ba052c2b)

## Exercise 2: Pharo Documentation Generator

### Description
The `PharoDoc` class generates documentation for Pharo classes and packages, mimicking the functionality of JavaDoc but specifically for the Pharo environment.

- **`classesInPackage: packageName`**: Returns all classes in a given package.
- **`documentClass: aClass`**: Generates documentation for a single class, including its superclass, subclasses, instance variables, and methods.
- **`documentPackage: packageName`**: Generates documentation for all classes in a package.

### PharoDoc Class

The `PharoDoc` class generates structured documentation for Pharo classes and packages. Below is the class definition:

```smalltalk
Object subclass: #PharoDoc
	instanceVariableNames: 'package'
	classVariableNames: ''
	package: 'PharoDoc'
```
### Methods

1. **`classesInPackage: packageName`**
   - Retrieves and lists all classes in the specified package.
   ![image](https://github.com/user-attachments/assets/7fe06f65-3355-4750-a568-00d74094f896)


2. **`documentClass: aClass`**
   - Documents the given class, including details such as its superclass, subclasses, instance variables, and methods.
   ![image](https://github.com/user-attachments/assets/7469a924-9089-4a12-a2d5-9199fb55f76c)


3. **`documentPackage: packageName`**
   - Documents all the classes within a specified package.
   ![image](https://github.com/user-attachments/assets/0b414349-56be-4527-b34f-f9646684eab3)
   ![image](https://github.com/user-attachments/assets/11de9722-da8b-4ea1-9f69-1b648596605a)


## Test Class: PharoDocTest

The `PharoDocTest` class verifies the functionality of the `PharoDoc` class.




### PharoDocTest Class

```smalltalk
TestCase subclass: #PharoDocTest
	instanceVariableNames: ''
	classVariableNames: ''
	package: 'PharoDoc'
```
![image](https://github.com/user-attachments/assets/9e5879c8-947e-49a3-8e00-c53ff8fa3848)

## Under Development 

The `MatrixConverterApp` is currently under development. This application will provide a user-friendly interface to interact with the `MatrixConverter` class and its methods. 

I will push it to this repository as soon as it is completed.
![image](https://github.com/user-attachments/assets/60edf601-b0b2-4c67-9d1f-e843a1d6e1b6)


## Installation

To run the code and tests , Clone this repository:

   ```bash
   git clone https://github.com/yosrak5/Pharo-assignments.git
```


