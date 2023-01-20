import UIKit
import Foundation

    func creatFactory (n : Int) -> (Int) -> Int {
        var existingNumbers: Array <Int> = []
        var numbersXORIntersections = [Int]()
        var biggestXOROfAllNumbers = 0
        func calculateXOR (_ a : Int, _ b : Int) -> Int {
            let XOR = a ^ b
            return XOR
        }
        func saveXORCombinations (numbers : Array <Int> ) {
            for i in 0...numbers.count - 1 {
                for j in 0...numbers.count - 1  {
                    let a = numbers[i];
                    let b = numbers[j];
                    if (i != j  && a != b) {
                        let isPairExist = numbersXORIntersections.contains(Int(a ^ b)) || numbersXORIntersections.contains(Int(b ^ a))
                        if (!isPairExist){
                            let value = calculateXOR(a, b)
                            numbersXORIntersections.append(Int(a ^ b))
                            if (value > biggestXOROfAllNumbers) {
                                biggestXOROfAllNumbers = value
                            }
                        }
                    }
                }
            }
        }
        func calculateBiggestXOR (_ studetNumber: Int) -> Int {
            if existingNumbers.isEmpty {
                existingNumbers.append(studetNumber)
                return 0
            }
            if (!existingNumbers.isEmpty && !existingNumbers.contains(studetNumber)){
                existingNumbers.append(studetNumber)
                saveXORCombinations(numbers: existingNumbers)
                return biggestXOROfAllNumbers
            } else {
                return biggestXOROfAllNumbers
            }
        }
        return calculateBiggestXOR
    }


var studentsNumbersFactory = creatFactory(n: 4)
studentsNumbersFactory(3)
studentsNumbersFactory(2)
studentsNumbersFactory(5)
studentsNumbersFactory(2)


