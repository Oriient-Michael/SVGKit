// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "OriientSVG",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "OriientSVG",
            type: .static,
            targets: ["OriientSVG"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "OriientSVG",
            dependencies: [],
            path: "Source",
            exclude: [
                "SwiftUI additions"
            ],
            resources: [.process("Resources/PrivacyInfo.xcprivacy")],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("privateHeaders"),
                .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release))
            ]
        )
    ]
)
