import ProjectDescription

let project = Project(
    name: "Alert",
    targets: [
        .target(
            name: "Contacts",
            destinations: .iOS,
            product: .app,
            bundleId: "RI.Alert",
            infoPlist: .default,
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: []
        )
    ]
)
