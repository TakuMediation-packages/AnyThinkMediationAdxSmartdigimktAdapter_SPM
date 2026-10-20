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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkSmartdigimktAdapter/6.5.80.2.0/AnyThinkSmartdigimktAdapter-6.5.80.2.0.zip",
            checksum: "95801676e0db2f0637d4bd3dfa8414acf9eca42732c23adaa14003953d8ce2e3"
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
