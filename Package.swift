// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "Blockchain-Server",
    pkgConfig: nil,
    providers: nil,
    targets: [
        .target(name: "App", dependencies: ["Vapor", "FluentProvider", "LeafProvider"],
                exclude: [
                    "Config",
                    "Public",
                    "Resources",
                ]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App", "Testing"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "2.1.0")),
        .package(url: "https://github.com/vapor/fluent-provider.git", .upToNextMajor(from: "1.2.0")),
        .package(url: "https://github.com/vapor/leaf-provider.git", .upToNextMajor(from: "1.1.0")),
    ],
    swiftLanguageVersions: 4,
// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "Blockchain-Server",
    pkgConfig: nil,
    providers: nil,
    targets: [
        .target(name: "App", dependencies: ["Vapor", "FluentProvider", "LeafProvider"],
                exclude: [
                    "Config",
                    "Public",
                    "Resources",
                    ]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App", "Testing"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "2.1.0")),
        .package(url: "https://github.com/vapor/fluent-provider.git", .upToNextMajor(from: "1.2.0")),
        .package(url: "https://github.com/vapor/leaf-provider.git", .upToNextMajor(from: "1.1.0")),
        ],
    swiftLanguageVersions: 4,
    products: [
        .library(name: "App", targets: ["App"]),
        .executable(name: "Run", targets: ["Run"])
    ]
)


)

