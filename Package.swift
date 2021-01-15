// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Flow",
    products: [
        .library(name: "Flow", targets: ["Flow"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick", .upToNextMajor(from: "3.0.0")),
        .package(url: "https://github.com/Quick/Nimble",  .upToNextMajor(from: "9.0.0"))
    ],
    targets: [
        .target(name: "Flow"),
        .testTarget(name: "FlowTests", dependencies: ["Flow", "Quick", "Nimble"]),
    ]
)
