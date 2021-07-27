// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "BuildTools",
    platforms: [.macOS(.v10_11)],
    dependencies: [
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.48.10"),
    ],
    targets: [.target(name: "BuildTools", path: "")]
)
