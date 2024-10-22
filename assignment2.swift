#1.Easy

// 1task
var Fruits: [String] = ["Banana" ,"Apple" ,"Strawberry" ,"Orange" ,"Avocado"]
var thirdFruit = Fruits[2]

print(thirdFruit)

// 2task

var favNumbers: Set<Int> = [10,17,21,27,7]
favNumbers.insert(9)

print(favNumbers)

// 3 task
var programmingLanguages = ["Python": 1991, "Java": 1995, "Swift": 2014]
let swiftReleaseYear = programmingLanguages["Swift"]!

print(swiftReleaseYear)  

//4task
var colours: [String] = ["Blue", "Red", "Yellow", "Purple"]
colours[1] = "Green"

print(colours)

#2.Medium

//1task
let firstset: Set = [1,2,3,4]
let secondset: Set = [3,4,5,6]
let intersectionSet = firstset.intersection(secondset)

print(intersectionSet)

//2task
var grades = ["Mubarak Kamzayev":80, "Mansur Maratov":70 , "Serik Armanuly":90]
grades.updateValue(100, forKey: "Mubarak Kamzayev")

print(grades)

//3task
let fruits1 = ["apple","banana"]
let fruits2 = ["cherry", "date"]
let fruits = fruits1 + fruits2

print(fruits)

#3.Hard

//1task
var countries = ["Kazakhstan": 20000000 , "Kyrgyzstan":7000000 ,"Uzbekistan": 37000000 , "Poland":40000000]
countries["Turkmenistan"] = 7000000

print(countries)

//2task
let set1: Set = ["cat" , "dog"]
let set2: Set = ["dog", "mouse"]
let union_set = set1.union(set2)
let final_set = union_set.subtracting(set2)

print(final_set)

//3task
var studentsGrades: [String: [Int]] = [
    "Magzhan": [75, 70, 76],
    "Janerke": [90, 88, 85],
    "Serik": [89, 92, 95]
]

if let secondGradeJanerke = studentsGrades["Janerke"]?[1] {
    print(secondGradeJanerke)

}



