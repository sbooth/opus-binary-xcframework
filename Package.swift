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
			url: "https://github.com/sbooth/opus-binary-xcframework/releases/download/0.2.1/opus.xcframework.zip",
			checksum: "73e360c3d63905b2e670aeb00bd9251c852b9205be01ab05fd7bf214a54a0e3e"),
	]
)
