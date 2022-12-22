import UIKit
import Foundation

func gcd (_ a : Int, _ b : Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd (b, a % b)
}

func getMinimalTicketNumbers (n: Int) -> Array<Any> {
    var a = 1
    var b = n - 1
    var smallestCommomMultiple = a * b / gcd(a, b)
    for i in 1...(n - 1) {
        var newB = n - i
        var newCommonMultiple = i * newB / gcd(i, newB)
        if (newCommonMultiple < smallestCommomMultiple) {
            smallestCommomMultiple = newCommonMultiple
            a = i
            b = newB
        }
    }
    return [a, b]
}
let n = 9
let numbers = getMinimalTicketNumbers(n: n)
print(numbers[0])
print(numbers[1])

