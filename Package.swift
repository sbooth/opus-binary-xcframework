// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "opus-binary-xcframework",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v14),
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
			url: "https://github.com/sbooth/opus-binary-xcframework/releases/download/0.2.0/opus.xcframework.zip",
			checksum: "0d1f5ab842e0eab6caf14d5d898dc0e3114f17907782a497572cd102a5d502ad"),
	]
)
