import Foundation

let randomNumber = Int.random(in: 0 ... 50)

print("""
The computer has thought of a number in a range from 0 to 50.
You need to guess the number.
""")

var userNumber: Int? = nil

repeat {
    print(Message.start.rawValue)
    let userInput = readLine()
    
    if let number = Int(userInput!) {
        userNumber = number
        let message = compareNumbers(userNumber!, randomNumber)
        print(message.rawValue)
    } else {
        print("Input Error. Please, enter a numeric value.")
    }
    
} while userNumber != randomNumber
