// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShapeKit",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "ShapeKit",
            targets: ["ShapeKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ShapeKit",
            dependencies: []),
        .testTarget(
            name: "ShapeKitTests",
            dependencies: ["ShapeKit"])
    ]
)
