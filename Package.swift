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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.1.0/YotiNetwork.zip",
            checksum: "77520d3bb46f39e6ae2d657a68664526c512ebbc4aa6f74e4c140b11e0cf4081"
        ),
        .binaryTarget(
            name: "YotiDocumentScan",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.1.0/YotiDocumentScan.zip",
            checksum: "04e622878c7f60d7b930528d98fde315c2e07e461ac0c33f8b0aa86c3001aed3"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.1.0/YotiNFC.zip",
            checksum: "d3b6fcb315998995d7852a23b959feb7276fc7161865a6857b3bc30c6131232b"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.1.0/YotiSDKDesign.zip",
            checksum: "a27748c17c69ad42b1e570c2fc31273689901c56af4e5dd7a969a0dd9b6c4464"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.1.0/YotiSDKCore.zip",
            checksum: "f824ce0d019dffb6ee7a05fa9908aff7fb92dc9084d05ab1ead81ed227977075"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.1.0/YotiSDKDocument.zip",
            checksum: "17a4e78961b810a404aa25000f9718a84b19f7f37c3e4365d861fb536e962578"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.1.0/YotiSDKIdentityDocument.zip",
            checksum: "a41962cfc27c97240203d19227170d914ebb2933737b7e2c6c6bb53640473d1e"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.1.0/YotiSDKSupplementaryDocument.zip",
            checksum: "32452f750135f1bb07ccf1343c65cd55ba88c5d392098d67421fbc763025e96d"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.1.0/YotiSDKFace.zip",
            checksum: "ba8f889c3a920a820499a20b12e69bf92387bb778ec03fb4ea2d3607d6179910"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.1.0/YotiSDKFaceTec-SPM.zip",
            checksum: "dfa77c01f6fcdcc8837b6b8421521ad4258a32857b7e2b2def9bea19f86bee75"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.1.0/YotiSDKFaceCapture.zip",
            checksum: "c31e58e6acec03091f8ccd784e5a56c9df7337f565ca9341c35c575bb25eab11"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.18.0/Microblink.xcframework.zip",
            checksum: "70d9f7ef26849b823e61e1375838a15ebb0ca0d4c58ad2b7e24e972261860219"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.1.0/FaceTecSDK.zip",
            checksum: "3e7106b37db1be502d49b4fa9c7735eb52a08c9f34290ab16336f97b9a9ff2aa"
        )
    ]
)
