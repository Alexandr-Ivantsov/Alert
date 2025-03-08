import ProjectDescription

let project = Project(
    name: "Alert",
    targets: [
        .target(
            name: "Alert",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Alert",
            infoPlist: .default,
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: []
        ),
        .target(
            name: "AlertTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.AlertTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "Alert")]
        ),
    ]
)
