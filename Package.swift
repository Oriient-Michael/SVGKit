// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SVGKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "SVGKit",
            type: .static,
            targets: ["SVGKit"]
        ),
        .library(
            name: "SVGKitSwift",
            type: .static,
            targets: ["SVGKitSwift"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SVGKit",
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
        ),
        .target(
            name: "SVGKitSwift",
            dependencies: [
                "SVGKit"
            ],
            path: "Source/SwiftUI additions"
        )
    ]
)
