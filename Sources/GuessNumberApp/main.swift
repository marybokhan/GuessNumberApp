import Foundation

// the computer selects a random number
let randomNumber = String(arc4random_uniform(50))

print("The computer has thought of a number in range from 0 to 50. You need to guess the number.")

// messages for guessing the number
let message = [
    "start": "Enter your number and press 'Enter'.",
    "more": "Your number is more than computer number.",
    "less": "Your number is less than computer number.",
    "win": "Yes! You are right!"
]

// user enters a number
var userNumber: String = ""

repeat {
    print(message["start"]!)
    let myNumber = readLine()
    userNumber = myNumber ?? ""
    
    if userNumber < randomNumber {
        print(message["less"]!)
    } else if userNumber > randomNumber {
        print(message["more"]!)
    }
} while userNumber != randomNumber

print(message["win"]!)
