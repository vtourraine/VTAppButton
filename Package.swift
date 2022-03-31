// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "VTAppButton",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "VTAppButton", targets: ["VTAppButton"])
    ],
    targets: [
        .target(
            name: "VTAppButton"
        )
    ],
    swiftLanguageVersions: [.v5]
)
