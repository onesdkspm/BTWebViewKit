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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTWebViewKit/2.0.1/BTWebViewKit.xcframework.zip",
            checksum: "2a562d133ae18d84f708feaed3ba223eb8ecc411842189e2fa8f089aaa121651"
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
