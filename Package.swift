// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BTWebViewKit",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "BTWebViewKit",
            targets: ["BTWebViewKit", "CommonResources"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "BTWebViewKit",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTWebViewKit/2.0.0/BTWebViewKit.xcframework.zip",
            checksum: "03ebfc6450bb60b2493380653c7581dec8dd8c4cb4683dd8fbeee42e8fdeb2ec"
        ),
        
        // ========== Bundle Resources ==========
        .target(
            name: "CommonResources",
            dependencies: [],
            path: "CommonResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        )
    ]
)
