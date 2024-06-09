import ProjectDescription

let baseSettings: [String: SettingValue] = [
	"MARKETING_VERSION": "1.0", // Version
	"CURRENT_PROJECT_VERSION": "1", // Build
]

let DSNetwork: Target = .target(
	name: "DSNetwork",
	destinations: .iOS,
	product: .framework,
	productName: "DSNetwork",
	bundleId: "disavle.DSNetwork",
	deploymentTargets: .iOS("14.0"),
	infoPlist: "DSNetwork/Configs/Info.plist",
	sources: "DSNetwork/Sources/**",
	resources: "DSNetwork/Resources/**", 
	dependencies: [
		.external(name: "HTTPTypesFoundation")
	],
	settings: .settings(
		base: baseSettings,
		configurations: [.debug(name: .debug), .release(name: .release)]
	)
)

let DSNetworkTests: Target = .target(
	name: "DSNetworkTests",
	destinations: .iOS,
	product: .unitTests,
	bundleId: "disavle.DSNetworkTests",
	deploymentTargets: .iOS("14.0"),
	infoPlist: "DSNetworkTests/Configs/Info.plist",
	sources: "DSNetworkTests/Sources/**",
	dependencies: [
		.target(name: "DSNetwork"),
	]
)

let project = Project(
	name: "DSNetwork",
	targets: [DSNetwork, DSNetworkTests],
	schemes: [
		.scheme(
			name: "DSNetwork",
			shared: true,
			buildAction: .buildAction(targets: ["DSNetwork"]),
			testAction: .targets(["DSNetworkTests"]),
			runAction: .runAction(executable: "DSNetwork")
		),
		.scheme(
			name: "DSNetworkTests",
			shared: true,
			buildAction: .buildAction(targets: ["DSNetworkTests"]),
			testAction: .targets(["DSNetworkTests"]),
			runAction: .runAction(executable: "DSNetworkTests")
		),
	]
)
