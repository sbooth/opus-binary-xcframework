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
			url: "https://github.com/sbooth/opus-binary-xcframework/releases/download/0.3.0/opus.xcframework.zip",
			checksum: "bae1b26f2e0e3e45c9fe001b73302d7cc9cb0f8a8db8f75956c87e2bb062a73e"),
	]
)
