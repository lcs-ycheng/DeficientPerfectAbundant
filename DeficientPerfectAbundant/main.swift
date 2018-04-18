////
////  main.swift
////  RotatingLetters
////
////  Created by Gordon, Russell on 2018-04-06.
////  Copyright © 2018 Gordon, Russell. All rights reserved.
////
//
import Foundation

//INPUT

//Create a global variable that will store the valid input
var validInput = 0
//Loop forever until vaild input is found
while 1 == 1 {
    
    //*
    //test #1: Wait for input AND at the same time, ensure input is not nil
    guard let givenInput = readLine()else {
        //If we got inside this structure, we have nil input
        //So, we should not do any more test
        //Just prompt again
        continue //go to the top of the while loop
    }
    
    //test #2: Is it an Integer?
    guard let givenInteger = Int(givenInput) else {
        
        //If we got here, inside the structure, we have input
        //that cannot be made input an integer (e.g. "ninety-five" or "LOL"
        continue// go to the top of the while loop
    }
    
    //test #3: Is the integer in the correct range?
    //less than 1
    // OR
    //more than 32500
    if givenInteger < 1 || givenInteger > 32500 {
        //if we got here, the number is NOT in correct range
        continue //go to top of the while loop
    }
    //If we got here (all three tests passes) we know we have vailed input
    validInput = givenInteger
    break //Important: gets us out of the infinite while loop
    
} //END of while loop

//PROCESS
print(validInput)

//Test the number is divisor or not
var sum = 1

for i in 2...validInput - 1 {
    if validInput % i == 0 {
        //means that i is the divisor of the number
        sum += i
    }
}
print(sum)

//check the sum is abundant, perfect or dificent
if sum < validInput {
    print("deficient")
}else if sum > validInput {
    print("abundant")
}else if sum == validInput {
    print("perfect")
}

//// Get the user input
//guard (givenInput) = readLine() else {
//    exit(9)
//}
//
//// Print out the input provided
//print("You said:")
//print(givenInput)
//
////process
//let properDivisorsCounts = 0
//for individualCharacter in givenInput {
//    //Debug
//    print(individualCharacter)
//
//
//}
