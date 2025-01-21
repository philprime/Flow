import XCTest
@testable import Flow

final class ForceUnwrapMapTests: XCTestCase {
    
    func testForceUnwrapMap() {
        // -- Arrange --
        let values: [Int?] = [1, 2, 3, 4, 5]
        // -- Act --
        let result = values.forceUnwrapMap({ value -> String? in
            String(describing: value)
        })
        // -- Assert --
        XCTAssertEqual(result, ["Optional(1)", "Optional(2)", "Optional(3)", "Optional(4)", "Optional(5)"])
    }
}
