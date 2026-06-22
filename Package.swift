// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "OriientSVG",
    platforms: [
        .iOS(.v14),
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
            resources: [],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("privateHeaders"),
                .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release)),
                .define("NDEBUG", to: "1", .when(configuration: .release))
            ]
        )
    ]
)
