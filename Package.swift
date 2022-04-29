// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "GuessNumberApp",
    targets: [
        .executableTarget(name: "GuessNumberApp"),
        .testTarget(
            name: "GuessNumberAppTests",
            dependencies: ["GuessNumberApp"])
    ]
)
