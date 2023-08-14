// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KMNavigationBarTransition",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "KMNavigationBarTransition",
            type: .dynamic,
            targets: ["KMNavigationBarTransition"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "KMNavigationBarTransition",
            path: "KMNavigationBarTransition",
            linkerSettings: [
                .linkedFramework("UIKit", .when(platforms: [.iOS])),
            ]
        ),
        .testTarget(
            name: "KMNavigationBarTransitionTests",
            dependencies: ["KMNavigationBarTransition"]),
    ]
)
