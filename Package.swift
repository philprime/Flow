// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Flow",
    products: [
        .library(name: "Flow", targets: ["Flow"]),
    ],
    targets: [
        .target(name: "Flow"),
        .testTarget(name: "FlowTests", dependencies: ["Flow"]),
    ]
)
