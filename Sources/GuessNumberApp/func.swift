import Foundation

func compareNumbers(_ userNumber: Int, _ computerNumber: Int) -> Message {
    if userNumber > computerNumber {
        return .more
    } else if userNumber < computerNumber {
        return .less
    } else {
        return .win
    }
}
