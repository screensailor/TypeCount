// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "TypeCount",
    products: [
        .library(name: "TypeCount", targets: ["TypeCount"]),
    ],
    targets: [
        .target(name: "TypeCount", dependencies: []),
        .testTarget(name: "TypeCountTests", dependencies: ["TypeCount"]),
    ]
)
