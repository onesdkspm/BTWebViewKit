// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BTWebViewKit",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "BTWebViewKit",
            targets: ["BTWebViewKit", "BTWebViewKitCommonResources"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "BTWebViewKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTWebViewKit/2.0.2/BTWebViewKit.xcframework.zip",
            checksum: "a5f9e2f43c9a46d2e73c0fcc8def3e1c5b4c567ac6eced3bb945227de22b2769"
        ),
        
        // ========== Bundle Resources ==========
        .target(
            name: "BTWebViewKitCommonResources",
            dependencies: [],
            path: "BTWebViewKitCommonResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        )
    ]
)
