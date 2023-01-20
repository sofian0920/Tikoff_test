import UIKit
import Foundation



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
