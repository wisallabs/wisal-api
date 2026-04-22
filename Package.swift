// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "WisalAPI",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        .library(name: "WisalAPI", targets: ["WisalAPI"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.37.0"),
        .package(url: "https://github.com/connectrpc/connect-swift", from: "1.2.2"),
    ],
    targets: [
        .target(
            name: "WisalAPI",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "Connect", package: "connect-swift"),
            ],
            path: "gen/swift"
        )
    ]
)
