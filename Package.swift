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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTWebViewKit/2.0.3-dev-1482597/BTWebViewKit.xcframework.zip",
            checksum: "9217138b57cf695302e1696df88bfe8186efc5e47517f6a325fd29cd1546e495"
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
