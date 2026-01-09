// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "YotiIDV",
    products: [
        .library(
            name: "YotiDocumentScan",
            targets: [
                "YotiDocumentScan",
                "Microblink"
            ]
        ),
        .library(
            name: "YotiNFC",
            targets: [
                "YotiNFC"
            ]
        ),
        .library(
            name: "YotiSDKIdentityDocument",
            targets: [
                "YotiNetwork",
                "YotiSDKDesign",
                "YotiSDKCore",
                "YotiSDKDocument",
                "YotiSDKIdentityDocument"
            ]
        ),
        .library(
            name: "YotiSDKSupplementaryDocument",
            targets: [
                "YotiNetwork",
                "YotiSDKDesign",
                "YotiSDKCore",
                "YotiSDKDocument",
                "YotiSDKSupplementaryDocument"
            ]
        ),
        .library(
            name: "YotiSDKFaceTec",
            targets: [
                "YotiNetwork",
                "YotiSDKDesign",
                "YotiSDKCore",
                "YotiSDKFace",
                "YotiSDKFaceTec",
                "FaceTecSDK"
            ]
        ),
        .library(
            name: "YotiSDKFaceCapture",
            targets: [
                "YotiNetwork",
                "YotiSDKDesign",
                "YotiSDKCore",
                "YotiSDKFace",
                "YotiSDKFaceCapture"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "YotiNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiNetwork.zip",
            checksum: "4883ab4a8356330a237c480874e3a295649bdd432de7475bc2eaebb443df5113"
        ),
        .binaryTarget(
            name: "YotiDocumentScan",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiDocumentScan-SPM.zip",
            checksum: "00204f4871755e77ccaeec336c5afffd6a23f6eed355adfb79dcaf8d39445e7a"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiNFC.zip",
            checksum: "76a4a895a7edca0e87ee6fea3c9ff4576b8d761ad63a409c1a1f79be7b60bc49"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKDesign.zip",
            checksum: "8a95d0b93a4f40cad064de18d20b3f36f340ed31f5f27d3faf33eef17f581018"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKCore.zip",
            checksum: "4ee9c5f48fda9d9a941281755fb4f53002bb48a69c66fcc29fa76957c35e7520"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKDocument.zip",
            checksum: "1376f59e5303acfcc3cb8173905ffce92538a1d71376ec114aefaeaf58b2d845"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKIdentityDocument.zip",
            checksum: "25c71d7d63c22d428bec89dbd0f934ba343a6912c84967fde3540a44ec32da0b"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKSupplementaryDocument.zip",
            checksum: "0abe73787204b82e26adb46b9ae277663ee9421b22c1873a61714a7a0aa67f98"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKFace.zip",
            checksum: "eecade8d3d506b108b8b2d5dfeb4486379af1091df39924821fbbafecc58c748"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKFaceTec-SPM.zip",
            checksum: "493f48dfeeb161f01e41ffc97a78a7c3165401f561592ca637f933a36c7a3dd2"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKFaceCapture.zip",
            checksum: "e83badd78f1ae214a9181dacf2af77a4bef7aca762de75f4d45b6ca44b7f8090"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/Microblink.zip",
            checksum: "feca922ba40ce9e6275070a8660e8963c9ba4f038604421959bec58ad0a47286"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/FaceTecSDK.zip",
            checksum: "05f82e57dffbb59dec07860168182acc2ca2dea6fa4d82a337a94102a96c9f86"
        )
    ]
)
