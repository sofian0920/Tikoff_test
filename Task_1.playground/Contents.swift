import UIKit
import Foundation



func countUglyWords (departmentName: String = " ", symbolsCount: Int = 0, colorOrder: String = " ") -> Int {
    let departamentWords = departmentName.split(separator: " ")
    var coloredWords = [[(char: String, color: String, index: Int)]]()
    var wordsSeparatorsIndexes = [Int]()
    
    for(i, char) in departmentName.enumerated(){
        if char == " " {
            wordsSeparatorsIndexes.append(i)
        }
    }
    var index = -1
       for word in departamentWords {
        let coloredWord = word.map { char in
          index += 1
          return (char: String(char), color: String(colorOrder[colorOrder.index(colorOrder.startIndex, offsetBy: index)]), index: index)
        }
        coloredWords.append(coloredWord)
      }
    
    let uglyWords = coloredWords.filter { word in
        if word.count <= 1 {
            return false
        }
        for i in 0..<word.count - 1 {
            if word[i].color == word[i + 1].color {
                return true
            }
        }
        return false
    }
    return uglyWords.count
}

print(countUglyWords(departmentName: "Tinkoff", symbolsCount: 7, colorOrder: "BYBYBYB"))
print(countUglyWords(departmentName: "Algorithms and Data Structures", symbolsCount: 27, colorOrder: "BBBBBBBBBBBYBYYYYBBBBBBBBBB"))


