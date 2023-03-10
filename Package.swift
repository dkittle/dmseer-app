// swift-tools-version: 5.7

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "DMSeer",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "DMSeer",
            targets: ["AppModule"],
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .paper),
            accentColor: .presetColor(.cyan),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            capabilities: [
                .outgoingNetworkConnections()
            ],
            appCategory: .entertainment
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Flipboard/FLAnimatedImage", "1.0.0"..<"2.0.0")
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                .product(name: "FLAnimatedImage", package: "flanimatedimage")
            ],
            path: ".",
            resources: [
                .process("Resources")
            ]
        )
    ]
)