// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Sodium",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v11)
    ],
    products: [
        .library(name: "Sodium", targets: ["Sodium"])
    ],
    dependencies: [
        .package(name: "Clibsodium", url: "https://github.com/0xacdc/XCFSodium.git", .branch("test")),
    ],
    targets: [
        .target(
            name: "Sodium",
            dependencies: ["Clibsodium"],
            path: "Sodium",
            exclude: ["Info.plist", "libsodium"]
        ),
        .testTarget(
            name: "SodiumTests",
            dependencies: ["Sodium"],
            path: "Tests/SodiumTests",
            exclude: ["Info.plist"]
        )
    ]
)
