import XCTest
@testable import TypeCount

final class TypeCountTests: XCTestCase {
    
    func test_() {
        XCTAssertEqual(e4<_2,_0,_1,_8>.count, 2018)
    }

    static var allTests = [
        ("test_", test_),
    ]
}
