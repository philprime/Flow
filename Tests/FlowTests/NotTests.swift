import XCTest

@testable import Flow

final class NotTests: XCTestCase {

    func testNotWithTruthyPredicate() {
        XCTAssertFalse(not({ true })(()))
    }

    func testNotWithFalseyPredicate() {
        XCTAssertTrue(not({ false })(()))
    }
}
