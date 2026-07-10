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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTWebViewKit/2.0.3-dev-1483016/BTWebViewKit.xcframework.zip",
            checksum: "1372ff6f93dd793c234b0b994b7c899031ad84852804c18475a38d90c2230db6"
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
