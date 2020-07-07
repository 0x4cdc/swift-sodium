// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Sodium",
    products: [
        .library(
            name: "Sodium",
            targets: ["Sodium"]),
    ],
    dependencies: [
        .package(url: "https://github.com/0xacdc/XCFSodium.git", .upToNextMajor(from: "0.0.1")),
    ],
    targets: [
        .target(
            name: "Sodium",
            dependencies: [],
            path: "Sodium",
            exclude: ["libsodium"]),
        .testTarget(
            name: "SodiumTests",
            dependencies: ["Sodium"]),
    ]
)
