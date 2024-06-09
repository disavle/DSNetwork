// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if TUIST
import ProjectDescription

let packageSettings = PackageSettings(
	productTypes: [
		"Alamofire": .framework,
	]
)

#endif

let package = Package(
	name: "DSNetwork",
	products: [
		.library(
			name: "DSNetwork",
			targets: ["DSNetwork"]),
	], 
	dependencies: [
		.package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0")
	],
	targets: [
		.target(
			name: "DSNetwork"),
		.testTarget(
			name: "DSNetworkTests",
			dependencies: ["DSNetwork"]),
	]
)
