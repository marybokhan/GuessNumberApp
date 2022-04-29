import XCTest
@testable import GuessNumberApp

final class GuessNumberApptests: XCTestCase {
    
    let computerNumber = 25
    
    func testCompareMore() throws {
        let actualResult = compareNumbers(30, computerNumber)
        let expectedResult = Message.more
        XCTAssertEqual(actualResult, expectedResult)
    }

    func testCompareLess() throws {
        let actualResult = compareNumbers(7, computerNumber)
        let expectedResult = Message.less
        XCTAssertEqual(actualResult, expectedResult)
    }

    func testCompareEqual() throws {
        let actualResult = compareNumbers(25, computerNumber)
        let expectedResult = Message.win
        XCTAssertEqual(actualResult, expectedResult)
    }
}
