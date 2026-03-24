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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTWebViewKit/2.0.0-dev-1407268/BTWebViewKit.xcframework.zip",
            checksum: "767e83f5b282c7f6242b38fcd721824a2ee80eba821041a2c4e7fa88ab252972"
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
