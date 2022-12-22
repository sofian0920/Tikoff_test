import UIKit
import Foundation

//// Читаем входные данные
//let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
//let a = input[0]
//let b = input[1]
//let c = input[2]
//
//let input2 = readLine()!.components(separatedBy: " ").map { Int($0)! }
//let x = input2[0]
//let y = input2[1]
//let z = input2[2]

//func getCount (x: Int, y : Int, z: Int, a : Int, b : Int, c : Int) -> Int {
//    var count = 0
//    for i in 0...x {
//
//        for j in 0...y {
//
//            for k in 0...z {
//
//                // Если мы можем получить тройку (i, j, k) с помощью некоторого количества обменов, то увеличиваем счетчик
//                if i + j + k == x + y + z && i * a + j * b + k * c == 0 {
//                    count += 1
//                }
//            }
//        }
//    }
//    return count
//}
//
//getCount(x: 1, y: 1, z: 1, a: 1, b: 0, c: 2)

func getCount(x: Int, y: Int, z: Int, a: Int, b: Int, c: Int) -> Int {
    var count = 0
    for i in (a == 0 ? 1 : 0)...x/a {
        for j in (b == 0 ? 1 : 0)...y/b {
            for k in (c == 0 ? 1 : 0)...z/c {
                if i * a + j * b + k * c == x + y + z {
                    count += 1
                }
            }
        }
    }
    return count
}
getCount(x: 1, y: 2, z: 3, a: 3, b: 5, c: 4)
