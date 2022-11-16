//
//  main.swift
//  FibonacciSequence
//
//  Created by Russell Gordon on 2022-11-15.
//

import Foundation

// Print the Fibonacci sequence using iteration
func fibonacciSequenceByIteration(terms: Int) {
    
    if terms <= 0 {
        print("Please provide an integer value greater than 0.")
    } else if terms == 1 {
        print("0")
    } else if terms == 2 {
        print("0, 1")
    } else {
        print("0, 1", terminator: "")
        
        var termBeforeThat = 0
        var priorTerm = 1
        for _ in 1...terms - 2 {
            
            // Print the new term
            let newTerm = termBeforeThat + priorTerm
            print(", \(newTerm)", terminator: "")
            
            // Obtain the earlier terms for next loop
            termBeforeThat = priorTerm
            priorTerm = newTerm
        }
    }
    
    // New line at end of sequence to separate from other output
    print("")
    
}

// Get the Fibonacci Sequence using iteration
fibonacciSequenceByIteration(terms: 10)

// Get the next term in a Fibonacci sequence, using recursion
func fibonacciSequenceNextTermWithRecursion(termNMinus2: inout Int,
                                            termNMinus1: inout Int,
                                            currentTerm: inout Int,
                                            totalTerms: Int) {
    // Get the current term's value
    let currentTermValue = termNMinus2 + termNMinus1
    
    // Print the current term
    print(", \(currentTermValue)", terminator: "")
    
    // Update prior terms
    termNMinus2 = termNMinus1
    termNMinus1 = currentTermValue
    
    // Increment what term we are on
    currentTerm += 1
    
    // Base case
    if currentTerm == totalTerms {
        return
    } else {
        // Not done finding terms, so keep invoking the function
        // This is the recursive case
        fibonacciSequenceNextTermWithRecursion(termNMinus2: &termNMinus2,
                                               termNMinus1: &termNMinus1,
                                               currentTerm: &currentTerm,
                                               totalTerms: totalTerms)
    }
    
}


// Print the Fibonacci sequence using recursion
func fibonacciSequenceByRecursion(terms: Int) {
    
    if terms <= 0 {
        print("Please provide a value greater than 0.")
    } else if terms == 1 {
        print("0", terminator: "")
    } else if terms == 2 {
        print("0, 1", terminator: "")
    } else {
        print("0, 1", terminator: "")

        var termNMinus2 = 0
        var termNMinus1 = 1
        var currentTerm = 2

        // Start using the recursive function
        fibonacciSequenceNextTermWithRecursion(termNMinus2: &termNMinus2,
                                               termNMinus1: &termNMinus1,
                                               currentTerm: &currentTerm,
                                               totalTerms: terms)

    }
    
    // Place any input that follows on the next line
    print("")
    
}

fibonacciSequenceByRecursion(terms: 10)
