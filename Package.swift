// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KakaoSDKWrapper",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "KakaoSDKWrapper",
            targets: [
                "KakaoSDKAuth",
                "KakaoSDKCommon",
                "KakaoSDKLink",
                "KakaoSDKNavi",
                "KakaoSDKStory",
                "KakaoSDKTalk",
                "KakaoSDKTemplate",
                "KakaoSDKUser",
            ]
        ),
        .library(name: "KakaoSDKAuth", targets: ["KakaoSDKAuth"]),
        .library(name: "KakaoSDKCommon", targets: ["KakaoSDKCommon"]),
        .library(name: "KakaoSDKLink", targets: ["KakaoSDKLink"]),
        .library(name: "KakaoSDKNavi", targets: ["KakaoSDKNavi"]),
        .library(name: "KakaoSDKStory", targets: ["KakaoSDKStory"]),
        .library(name: "KakaoSDKTalk", targets: ["KakaoSDKTalk"]),
        .library(name: "KakaoSDKTemplate", targets: ["KakaoSDKTemplate"]),
        .library(name: "KakaoSDKUser", targets: ["KakaoSDKUser"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "KakaoSDKAuth",
                dependencies: ["KakaoSDKCommon"],
                path: "Sources/KakaoSDKAuth"),
        .target(name: "KakaoSDKCommon",
                dependencies: ["Alamofire"],
                path: "Sources/KakaoSDKCommon"),
        .target(name: "KakaoSDKLink",
                dependencies: ["Alamofire", "KakaoSDKTemplate"],
                path: "Sources/KakaoSDKLink"),
        .target(name: "KakaoSDKNavi",
                dependencies: ["KakaoSDKCommon"],
                path: "Sources/KakaoSDKNavi"),
        .target(name: "KakaoSDKStory",
                dependencies: ["KakaoSDKAuth", "KakaoSDKCommon"],
                path: "Sources/KakaoSDKStory"),
        .target(name: "KakaoSDKTalk",
                dependencies: ["KakaoSDKAuth", "KakaoSDKCommon"],
                path: "Sources/KakaoSDKTalk"),
        .target(name: "KakaoSDKTemplate",
                dependencies: ["KakaoSDKCommon"],
                path: "Sources/KakaoSDKTemplate"),
        .target(name: "KakaoSDKUser",
                dependencies: ["KakaoSDKAuth", "KakaoSDKCommon"],
                path: "Sources/KakaoSDKUser"),
    ]
)
