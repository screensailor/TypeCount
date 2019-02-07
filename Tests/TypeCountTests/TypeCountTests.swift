import XCTest
@testable import TypeCount

final class TypeCountTests: XCTestCase {
    
    func test_() {
        XCTAssertEqual(N₄<˙2,˙0,˙1,˙8>.count, 2018)
    }

    static var allTests = [
        ("test_", test_),
    ]
}
