import UIKit

var greeting = "Hello, playground"

enum Seasons: Int, CaseIterable {
    case winter = 1
    case spring = 2
    case summer = 3
    case autumn = 4

}

let seasonsValue = Seasons.summer.rawValue
print(seasonsValue)

let allSeason = Seasons.allCases

for season in Seasons.allCases {
    print(season)
    
}

//1

let array = [ 0,3,6,11,9,4,1,14]
let array1 = [19,18,20,16,23,26,15,30]
print(array)
print(array1)
let sumArray = array + array1
print(sumArray)
let sourtedArray = sumArray.sorted(by:{$0<$1})
print(sourtedArray)

//2

let num = [ 4, 3, 11]
print(num)
let numSquare = num.map({ $0 * $0 })
print(numSquare)

//3

//func filterEvenNumbers( value: [Int]) -> [Int] {
//    var result = [Int]()
//    for number in value  {
//        if number % 2 == 0 {
//            result.append(number)
//        }
//    }
//    return result
//}
//let numbers = [ 1, 4, 9, 12, 15]
//let evenNumbers = filterEvenNumbers(numbers)
//print(evenNumbers)

//let value = [ 1, 4, 15, 20, 33]
//for val in value { print(val)}
//value.forEach {print($0 % 2 == 0)}

let values = [3, 4, 20, 44, 99]
print(values)
let value = values.filter({$0 % 2 == 0})
print(value)

//4

//map

let country = ["Spain", "France", "Italy", "Japan"]
let countryLength = country.map({$0.count})
print(countryLength)

let numbers = [2, 8, 4, 10]
let numbersSquare = numbers.map({$0*$0})
print(numbersSquare)

let date = [2.6, 4.5, 6.7, 1.0]
let sumDate = date.map({$0+1.8})
print(sumDate)

//filter

var numbers2 = [30, 8, 11, 23]
var smallNumbers = numbers2.filter({$0 < 15})
print(smallNumbers)

let numeric = [ 3, 11, 14, 9, 21]
let numeric2 = numeric.filter({$0 % 3 == 0})
print(numeric2)

//reduce

var numbers3 = [ 10, 30, 15, 15]
var sum = numbers3.reduce(0) {accum, next in
    return accum + next
}
print(sum)

let a = [11, 33, 22]
let sumA = a.reduce(0) {
    print("\($0) + \($1) = \($0 + $1)")
    return $0 + $1
}
print(sumA)

// forEach

let b = [ 1,5,8]
for element in b {print(element)}
b.forEach{print($0)}

let model = ["audi","ford","bmw"]
for models in model {print(models)}
model.forEach{print($0)}

// CompactMap

let x = ["seven","8","99abc"]
let integer = x.compactMap {str in
    Int(str)
}
print(integer)

// Sorted

let students = ["Mike", "John", "Albert", "Kofi"]
let sortedStudents = students.sorted()
print(students)
print(sortedStudents)

let z = [49, 36, 99, 80, 54]
let sourtedZ = z.sorted()
print(sourtedZ)
