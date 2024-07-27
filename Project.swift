import ProjectDescription

let project = Project(
    name: "tmp",
    targets: [
        .target(
            name: "tmp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.tmp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["tmp/Sources/**"],
            resources: ["tmp/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "tmpTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.tmpTests",
            infoPlist: .default,
            sources: ["tmp/Tests/**"],
            resources: [],
            dependencies: [.target(name: "tmp")]
        ),
    ]
)
