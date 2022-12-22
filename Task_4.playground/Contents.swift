import UIKit
import Foundation

//func getMaxTriangleArea(_ n: Int) -> Float {
//    let interiorAngle = (n - 2) * 180 / n
//    let triangleAngle = interiorAngle / 3
//    let tangens = tan(Float(triangleAngle) * Float.pi / 180)
//    let triangleArea = 0.125 * tangens
//    let polygonArea = 0.25 * Float(n)
//    var area = polygonArea - (Float(n - 2) * triangleArea)
//    return area
//}
//let n = 3
//var maxTriangleArea = getMaxTriangleArea(n)
//print(maxTriangleArea)





//func getMaxTriangleArea (_ n: Int) -> Float {
//    func serchTan (_ n: Int) -> Float {
//        return tan( 180 / Float(n))
//    }
//    let interiorAngle = (n - 2) * 180 / n
//    let triangleAngle = interiorAngle / 3
//    let tangens = tan(Float(triangleAngle) * Float.pi / 180)
//    let triangleArea = 0.125 * tangens
//    let polygonArea = 0.25 * Float(n)
//    var area1 = polygonArea - (Float(n - 2) * triangleArea)
//    return area1
//}
//
//let n = 10
//var maxTriangleArea = getMaxTriangleArea(n)
//print(maxTriangleArea)

//const getMaxTriangleArea = (n) => {
//  // Calculate the interior angle of the polygon
//  const interiorAngle = (n - 2) * 180 / n;
//
//  // Calculate the central angle of a single triangle
//  const triangleAngle = interiorAngle / 3;
//
//  // Calculate the area of a single triangle using the central angle
//  const triangleArea = (1 / 2) * (1 / 2) * (1 / 2) * Math.tan(triangleAngle * Math.PI / 180);
//
//  // Calculate the total area of the polygon
//  const polygonArea = (1 / 2) * (1 / 2) * n;
//
//  // Return the maximum triangle area by subtracting the unused portion of the polygon
//  return polygonArea - ((n - 2) * triangleArea);
//}
//
//const n = 3;
//const maxTriangleArea = getMaxTriangleArea(n);
//console.log(maxTriangleArea);




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
