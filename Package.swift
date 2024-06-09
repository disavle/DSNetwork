// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "DSNetwork",
	products: [
		.library(
			name: "DSNetwork",
			targets: ["DSNetwork"]),
	],
	targets: [
		.target(
			name: "DSNetwork"),
		.testTarget(
			name: "DSNetworkTests",
			dependencies: ["DSNetwork"]),
	]
)
