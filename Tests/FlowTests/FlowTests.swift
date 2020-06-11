import Quick
import Nimble
@testable import Flow

final class FlowTests: QuickSpec {

    override func spec() {
        describe("not") {

            context("predicate returns truthy") {

                it("should negate a result") {
                    expect(not({ true })(())) == false
                }
            }

            context("predicate returns falsey") {

                it("should negate a result") {
                    expect(not({ false })(())) == true
                }
            }
        }
    }
}
