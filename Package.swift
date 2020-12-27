// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ZZiruruAlert",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "ZZiruruAlert",
                 targets: ["ZZiruruAlert"])
    ],
    targets: [
        .target(name: "ZZiruruAlert",
                path: "ZZiruruAlert/Classes")
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
