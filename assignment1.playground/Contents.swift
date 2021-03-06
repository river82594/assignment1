import UIKit
import SwiftUI

//Problem 1
//Reverse String Array
var prob1 = ["Thing1", "Thing2", "Thing3"]
var reversedArray: [String] = []

for i in prob1 {
    reversedArray.insert(i, at: 0)
}
print("Problem 1 - Reversed Array:")
print("-", reversedArray)

//Probelm 2
//Find prime number inside of array
//Set an array of numbers
print("Problem 2 - Find prime number inside of an array:")
var prob2 = [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
//Set an empty array for the prime numbers to be appened to
var primeNums: [Int] = []
//Write a for loop to iterate over the array of numbers
for prime in prob2 {
    for x in 2..<prime {
        if prime % x == 0 {
            break;
        }
        if prime % x != 0 && x == prime - 1 {
            primeNums.append(prime)
        }
    }
}
print("-Prime numbers are", primeNums)

//Problem 3 / Find even and odd numbers in an array
print("Problem 3 - Find even and odd numbers in an array:")
var evenNums: [Int] = []
for num in prob2 {
    if (num % 2 == 0) {
        evenNums.append(num)
    }
}
print("-The Even numbers of the array are", "\(evenNums)")
var oddNums: [Int] = []
for num in prob2 {
    if (num % 2 == 1) {
        oddNums.append(num)
    }
}
print("-The Odd numbers of the array are", "\(oddNums)")

//Problem 4 / Find factorial of a given number
// - Definition of Factorial of a Number -
//"Multiply all whole numbers from chosen number down to 1"
//We will write a recursive function (function that calls itself)
//Declare type and also what type the function will return
func calculateFactorial(someType: Double) -> Double {
    if someType == 1 {
        return 1
    } else if someType < 0 {
        return 0
    } else {
        return someType * calculateFactorial(someType:someType - 1)
    }
}
//Enter the number you wish to test into "(someType: _ )"
let fact = calculateFactorial(someType: -4)

print("Problem 4 - Find Factorial of a given number:")
print("-The Factorial is: ",fact)

//Problem 5 & 6 / produce a grouped array from the given array [1,2,3,4,5,6]
print("Problem 5 & 6 - Given an array [ , , , ] produce [[],[],[]]")
var givenArray = [1,2,3,4,5,6,7]
var resultArray: [[Int]] = []
var tempArray: [Int] = []
//Set group size = 2
let groupSize = 2
for item in givenArray {
    tempArray.append(item)
    if tempArray.count == groupSize {
        resultArray.append(tempArray)
        tempArray.removeAll()
    }
}
print("The result array:", resultArray)


