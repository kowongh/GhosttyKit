// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "GhosttyKit",
    platforms: [
        .macOS(.v13),
    ],
    products: [
        .library(
            name: "GhosttyKit",
            targets: ["GhosttyKit"]
        ),
        .library(
            name: "GhosttyVt",
            targets: ["GhosttyVt"]
        ),
    ],
    targets: [
        // libghostty-vt 1.0.0. Checksum is the ghostty-vt-1.0.0.xcframework.zip
        // line in https://release.files.ghostty.org/libghostty-vt/1.0.0/SHA256SUMS
        .binaryTarget(
            name: "GhosttyVt",
            url: "https://release.files.ghostty.org/libghostty-vt/1.0.0/ghostty-vt-1.0.0.xcframework.zip",
            checksum: "2c32b7409b2b6c2ef6cfd606526de357762ad458bdc27134ad074e86506a8bc2"
        ),
        .target(
            name: "GhosttyKit",
            dependencies: ["GhosttyVt"],
            path: "Sources/GhosttyKitExports",
            exclude: [
                "GhosttyDefaultTheme.swift",
                "GhosttyTerminalRepresentable.swift",
                "GhosttyTerminalSession.swift",
                "GhosttyTerminalView.swift",
            ]
        ),
    ]
)
