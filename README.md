# GhosttyKit

Swift package for [libghostty-vt 1.0](https://lib.ghostty.org/vt/). The
`GhosttyVt` product is the official prebuilt XCFramework. `GhosttyKit`
re-exports that module, so `import GhosttyKit` and `import GhosttyVt` see the
same C API (`ghostty/vt.h`).

```swift
.binaryTarget(
    name: "GhosttyVt",
    url: "https://release.files.ghostty.org/libghostty-vt/1.0.0/ghostty-vt-1.0.0.xcframework.zip",
    checksum: "2c32b7409b2b6c2ef6cfd606526de357762ad458bdc27134ad074e86506a8bc2"
)
```

## Install

```swift
.package(url: "https://github.com/kowongh/GhosttyKit.git", branch: "main")
```

Depend on `GhosttyKit` or `GhosttyVt`. The XCFramework has macOS (arm64 and
x86_64) and iOS slices. This package declares a macOS 13 minimum.

libghostty-vt is the terminal-state library. It has no AppKit surface and no
PTY. The previous embedding host (`GhosttyTerminalSession`,
`GhosttyTerminalView`) is still in `Sources/GhosttyKitExports` but is excluded
from the build.

## Updating the binary

Bump the `url` and `checksum` in `Package.swift` to a newer
`ghostty-vt-VERSION.xcframework.zip` from
`https://release.files.ghostty.org/libghostty-vt/VERSION/SHA256SUMS`.
The checksum is the SHA256 of that zip.

## License

This wrapper is MIT licensed. The bundled `libghostty` sources and binary are
derived from upstream Ghostty, which is also MIT licensed.
