
//1 FizzBuzz program
for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}

//2 Function to check if a number is prime
func isPrime(_ number: Int) -> Bool {
    guard number > 1 else { return false } // Numbers less than or equal to 1 are not prime
    for i in 2..<Int(sqrt(Double(number))) + 1 {
        if number % i == 0 {
            return false // Found a divisor, so not prime
        }
    }
    return true // No divisors found, so it is prime
}

// Print all prime numbers between 1 and 100
for number in 1...100 {
    if isPrime(number) {
        print(number)
    }
}

import Foundation

// Function to convert temperatures
func convertTemperature(value: Double, from unit: String) {
    switch unit.uppercased() {
    case "C":
        let fahrenheit = (value * 9/5) + 32
        let kelvin = value + 273.15
        print("\(value)°C is \(fahrenheit)°F and \(kelvin)K")
    case "F":
        let celsius = (value - 32) * 5/9
        let kelvin = celsius + 273.15
        print("\(value)°F is \(celsius)°C and \(kelvin)K")
    case "K":
        let celsius = value - 273.15
        let fahrenheit = (celsius * 9/5) + 32
        print("\(value)K is \(celsius)°C and \(fahrenheit)°F")
    default:
        print("Invalid unit. Please enter C, F, or K.")
    }
}



//3 Function to convert temperatures
func convertTemperature(value: Double, from unit: String) {
    switch unit.uppercased() {
    case "C":
        let fahrenheit = (value * 9/5) + 32
        let kelvin = value + 273.15
        print("\(value)°C is \(fahrenheit)°F and \(kelvin)K")
    case "F":
        let celsius = (value - 32) * 5/9
        let kelvin = celsius + 273.15
        print("\(value)°F is \(celsius)°C and \(kelvin)K")
    case "K":
        let celsius = value - 273.15
        let fahrenheit = (celsius * 9/5) + 32
        print("\(value)K is \(celsius)°C and \(fahrenheit)°F")
    default:
        print("Invalid unit. Please enter C, F, or K.")
    }
}

// User input
print("Enter temperature value:")
if let inputValue = readLine(), let temperatureValue = Double(inputValue) {
    print("Enter the unit (C, F, K):")
    if let unit = readLine() {
        convertTemperature(value: temperatureValue, from: unit)
    }
}


// Problem 4.Shopping List
var shoppingList: [String] = []

while true {
    print("\nShopping List Manager")
    print("1. Add Item")
    print("2. Remove Item")
    print("3. Display List")
    print("4. Exit")
    
    if let choice = readLine() {
        switch choice {
        case "1":
            print("Enter item to add:")
            if let item = readLine() {
                shoppingList.append(item)
                print("\(item) added to the shopping list.")
            }
        case "2":
            print("Enter item to remove:")
            if let item = readLine(), let index = shoppingList.firstIndex(of: item) {
                shoppingList.remove(at: index)
                print("\(item) removed from the shopping list.")
            } else {
                print("Item not found.")
            }
        case "3":
            print("Current Shopping List:")
            for item in shoppingList {
                print("- \(item)")
            }
        case "4":
            print("Exiting...")
            exit(0)
        default:
            print("Invalid choice. Please try again.")
        }
    }
}



//5 Function to count word frequency
func wordFrequency(sentence: String) {
    let words = sentence.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted)
    var frequency: [String: Int] = [:]
    
    for word in words {
        if word.isEmpty { continue }
        frequency[word, default: 0] += 1
    }
    
    print("Word Frequencies:")
    for (word, count) in frequency {
        print("\(word): \(count)")
    }
}

// User input
print("Enter a sentence:")
if let inputSentence = readLine() {
    wordFrequency(sentence: inputSentence)
}

//6 Function to calculate Fibonacci sequence
func fibonacci(_ n: Int) -> [Int] {
    guard n > 0 else { return [] } // Return empty array for non-positive n
    var sequence = [0, 1]
    
    for _ in 2..<n {
        let nextNumber = sequence[sequence.count - 1] + sequence[sequence.count - 2]
        sequence.append(nextNumber)
    }
    
    return Array(sequence.prefix(n)) // Return first n numbers
}

// Print first 10 Fibonacci numbers
print(fibonacci(10))

//Problem 7 :Grade calculator
var students: [String: Double] = [:]
var totalScore = 0.0
var numberOfStudents = 0

while true {
    print("\nGrade Calculator")
    print("1. Add Student")
    print("2. Calculate Average")
    print("3. Display Scores")
    print("4. Exit")
    
    if let choice = readLine() {
        switch choice {
        case "1":
            print("Enter student name:")
            if let name = readLine() {
                print("Enter score:")
                if let scoreInput = readLine(), let score = Double(scoreInput) {
                    students[name] = score
                    totalScore += score
                    numberOfStudents += 1
                }
            }
        case "2":
            let average = totalScore / Double(numberOfStudents)
            print("Average Score: \(average)")
        case "3":
            for (name, score) in students {
                let status = (score >= totalScore / Double(numberOfStudents)) ? "Above Average" : "Below Average"
                print("\(name): \(score) - \(status)")
            }
        case "4":
            print("Exiting...")
            exit(0)
        default:
            print("Invalid choice. Please try again.")
        }
    }
}


// Problem 8.Palindrom checker
// Function to check if a string is a palindrome
func isPalindrome(_ text: String) -> Bool {
    let cleanedText = text.lowercased().replacingOccurrences(of: " ", with: "").filter { $0.isLetter }
    return cleanedText == String(cleanedText.reversed())
}

// Test the function
print("Enter a string:")
if let inputText = readLine() {
    print("\(inputText) is palindrome: \(isPalindrome(inputText))")
}

//Problem 9.Simple calculator


// Function for basic arithmetic operations
func performOperation(_ num1: Double, _ num2: Double, _ operation: String) -> Double? {
    switch operation {
    case "+":
        return num1 + num2
    case "-":
        return num1 - num2
    case "*":
        return num1 * num2
    case "/":
        return num2 != 0 ? num1 / num2 : nil // Handle division by zero
    default:
        return nil
    }
}

// Main loop for calculator
while true {
    print("Enter first number:")
    if let input1 = readLine(), let num1 = Double(input1) {
        print("Enter second number:")
        if let input2 = readLine(), let num2 = Double(input2) {
            print("Enter operation (+, -, *, /):")
            if let operation = readLine() {
                if let result = performOperation(num1, num2, operation) {
                    print("Result: \(result)")
                } else {
                    print("Error: Division by zero or invalid operation.")
                }
            }
        }
    }
    print("Do you want to continue? (y/n)")
    if let continueInput = readLine(), continueInput.lowercased() != "y" {
        break
    }
}

//Problem 10.Unique characters
// Function to check for unique characters
func hasUniqueCharacters(_ text: String) -> Bool {
    var characterSet = Set<Character>()
    
    for char in text {
        if characterSet.contains(char) {
            return false // Character is not unique
        }
        characterSet.insert(char)
    }
    
    return true // All characters are unique
}

// Test the function
print("Enter a string:")
if let inputText = readLine() {
    print("Has unique characters: \(hasUniqueCharacters(inputText))")
}
