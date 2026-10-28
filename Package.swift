// swift-tools-version:5.3
// 自动生成；内部 .a 和 BaseSDK 头不属于用户接口。
import PackageDescription

let package = Package(
    name: "AdWangMaiSDK", platforms: [.iOS("11.0")],
    products: [
        .library(name: "AdWangMaiSDK", targets: ["AdWangMaiSDKSupport"]),
        .library(name: "XAdFunteeSDKAd", targets: ["XAdFunteeSDKAdSupport"])
    ],
    targets: [
        .binaryTarget(name: "AdWangMaiSDK", path: "Binaries/AdWangMaiSDK.xcframework"),
        .binaryTarget(name: "OneAdSDK", path: "Binaries/OneAdSDK.xcframework"),
        .binaryTarget(name: "XAdFunteeSDKAd", path: "Binaries/XAdFunteeSDKAd.xcframework"),
        .target(name: "AdWangMaiSDKSupport", dependencies: ["AdWangMaiSDK"], resources: [.copy("Resources/adwangmai_sdk.bundle"), .copy("Resources/AdWangMaiSDKPrivacy.bundle")], publicHeadersPath: "include", linkerSettings: [.linkedFramework("Foundation"), .linkedFramework("UIKit"), .linkedFramework("WebKit"), .linkedFramework("StoreKit"), .linkedFramework("AdSupport"), .linkedFramework("CoreLocation"), .linkedFramework("CoreMotion"), .linkedFramework("CoreImage"), .linkedFramework("AVFoundation"), .linkedFramework("CoreMedia"), .linkedFramework("CoreVideo"), .linkedFramework("CoreGraphics"), .linkedFramework("QuartzCore"), .linkedFramework("AudioToolbox"), .linkedFramework("Security"), .linkedFramework("SystemConfiguration"), .linkedFramework("ImageIO"), .linkedFramework("Accelerate"), .linkedFramework("AppTrackingTransparency"), .linkedFramework("CoreTelephony"), .linkedFramework("CFNetwork"), .linkedFramework("Metal"), .linkedFramework("MobileCoreServices"), .linkedLibrary("z"), .linkedLibrary("c++"), .linkedLibrary("sqlite3")]),
        .target(name: "XAdFunteeSDKAdSupport", dependencies: ["XAdFunteeSDKAd", "AdWangMaiSDKSupport", "OneAdSDK"], resources: [.copy("Resources/XrsImage.bundle")], publicHeadersPath: "include", linkerSettings: [.linkedFramework("Foundation"), .linkedFramework("UIKit"), .linkedFramework("WebKit"), .linkedFramework("StoreKit"), .linkedFramework("AdSupport"), .linkedFramework("CoreLocation"), .linkedFramework("CoreMotion"), .linkedFramework("CoreImage"), .linkedFramework("AVFoundation"), .linkedFramework("CoreMedia"), .linkedFramework("CoreVideo"), .linkedFramework("CoreGraphics"), .linkedFramework("QuartzCore"), .linkedFramework("AudioToolbox"), .linkedFramework("Security"), .linkedFramework("SystemConfiguration"), .linkedFramework("ImageIO"), .linkedFramework("Accelerate"), .linkedFramework("AppTrackingTransparency"), .linkedFramework("CoreTelephony"), .linkedFramework("CFNetwork"), .linkedFramework("Metal"), .linkedFramework("MobileCoreServices"), .linkedLibrary("z"), .linkedLibrary("c++"), .linkedLibrary("sqlite3")])
    ]
)
