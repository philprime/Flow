.PHONY: format build test test-with-coverage	

format:
	swift format --configuration .swift-format --in-place --recursive Sources Tests
	swiftlint --fix --config .swiftlint.yml Sources Tests

build:
	swift build

test:
	swift test

test-with-coverage:
	swift test --enable-code-coverage
