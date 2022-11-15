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
