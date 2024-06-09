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
	dependencies: [
		.package(url: "https://github.com/apple/swift-http-types", from: "1.1.0")
	],
	targets: [
		.target(
			name: "DSNetwork",
			path: "DSNetwork/Sources"
		),
		.testTarget(
			name: "DSNetworkTests",
			dependencies: ["DSNetwork"],
			path: "DSNetworkTests/Sources"
		),
	]
)
