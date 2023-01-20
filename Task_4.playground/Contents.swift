import UIKit
import Foundation





func getMaxTriangleArea(_ n: Int) -> Float {
    let interiorAngle = (n - 2) * 180 / n
    let triangleAngle = interiorAngle / 3
    let tangens = tan(Float(triangleAngle) * Float.pi / 180)
    let triangleArea = 0.125 * tangens
    let polygonArea = 0.25 * Float(n)
    var area = triangleArea - (Float(n - 2) * polygonArea)
    return area
}

let n = 10
var maxTriangleArea = getMaxTriangleArea(n)
print(maxTriangleArea)
