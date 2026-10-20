// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationAdxSmartdigimktAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationAdxSmartdigimktAdapter",
            targets: ["AnyThinkMediationAdxSmartdigimktAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://gitee.com/zhouhanhao/SmartdigimktSDK_SPM.git", exact: "6.5.80")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSmartdigimktAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkSmartdigimktAdapter/6.5.80.2.9/AnyThinkSmartdigimktAdapter-6.5.80.2.9.zip",
            checksum: "1dc5adba5d0be689cf399b2cbd0d2acaa9d651bd1d7281d9b4c51b483dc3026e"
        ),
        .target(
            name: "AnyThinkMediationAdxSmartdigimktAdapterTarget",
            dependencies: [
                "AnyThinkSmartdigimktAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "SmartdigimktSDK", package: "SmartdigimktSDK_SPM")
            ],
            path: "Sources/AnyThinkMediationAdxSmartdigimktAdapterTarget"
        )
    ]
)
