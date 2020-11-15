import UIKit

/*
 1. Реализовать функцию перевода из десятичной системы в двоичную, используя рекурсию.
 */

func convertNumber(_ number: Int,_ depth: Int = 0) -> String {
    var divider = 0
    var result = 0
    var binaryNumber = ""
    var depthIn = depth
    depthIn += 1
    
    if number == 0 {
        return "0"
    } else if number == 1 {
        return "1"
    }
    
    divider = number % 2
    result = number / 2
    
    binaryNumber = "\(divider)"

    if result > 1 {
        binaryNumber = convertNumber(result, depthIn) + binaryNumber

    }
    if depthIn == 1 {
        binaryNumber = "1\(binaryNumber)"
    }
    
    return binaryNumber
}
print(convertNumber(15))
print("\(0 / 2)")





