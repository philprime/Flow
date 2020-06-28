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

        describe("forceUnwrapMap") {

            it("should return array with force unwrapped values") {
                let values: [Int?] = [1, 2, 3, 4, 5]
                let result = values.forceUnwrapMap({ value -> String? in
                    String(describing: value)
                })
                expect(result) == ["Optional(1)", "Optional(2)", "Optional(3)", "Optional(4)", "Optional(5)"]
            }
        }
    }
}
