// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "opus-binary-xcframework",
	platforms: [
		.macOS(.v11),
		.iOS(.v15),
		.tvOS(.v15),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "opus",
			targets: [
				"opus",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.binaryTarget(
			name: "opus",
			url: "https://github.com/sbooth/opus-binary-xcframework/releases/download/0.2.2/opus.xcframework.zip",
			checksum: "a7c0549b4d45e3304ee3c7d975b9a4ec6b02d8367284a34e1e438d944534a63d"),
	]
)
