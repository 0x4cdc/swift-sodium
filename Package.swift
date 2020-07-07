// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Sodium",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "Sodium", targets: ["Sodium"])
    ],
    dependencies: [
        .package(name: "Clibsodium", url: "https://github.com/0xacdc/XCFSodium.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(
            name: "Sodium",
            dependencies: ["Clibsodium"],
            path: "Sources"
        ),
        .testTarget(
            name: "SodiumTests",
            dependencies: ["Sodium"],
            path: "SodiumTests",
            exclude: ["Info.plist"]
        )
    ]
)
