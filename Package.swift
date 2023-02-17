// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "YotiIDV",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "YotiSDKDocument",
            targets: [
                "YotiFoundation",
                "YotiNetwork",
                "YotiSDKNetwork",
                "YotiCommon",
                "YotiSDKCommon",
                "YotiSDKDesign",
                "YotiSDKCore",
                "YotiDocumentCapture",
                "YotiSDKDocument",
                "Microblink",
                "mrtddump"
            ]
        ),
        .library(
            name: "YotiSDKFaceTec",
            targets: [
                "YotiFoundation",
                "YotiNetwork",
                "YotiSDKNetwork",
                "YotiCommon",
                "YotiSDKCommon",
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
                "YotiFoundation",
                "YotiNetwork",
                "YotiSDKNetwork",
                "YotiCommon",
                "YotiSDKCommon",
                "YotiSDKDesign",
                "YotiSDKCore",
                "YotiSDKFace",
                "YotiSDKFaceCapture",
                "YotiFaceCapture"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "YotiFoundation",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiFoundation.zip",
            checksum: "5ec053890fa5c450694da7a2df75f5a81ca4a45e6c6977ea53350aadbf417977"
        ),
        .binaryTarget(
            name: "YotiNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiNetwork.zip",
            checksum: "a693e94d522744179def853d0260ea50b3be1dbaa8fde96607b3b2d2d6c6cbab"
        ),
        .binaryTarget(
            name: "YotiSDKNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKNetwork.zip",
            checksum: "e526d13d4b4b83a92de7c0bf4b7078b2196384cfb6e247be2e86ceb757bf835f"
        ),
        .binaryTarget(
            name: "YotiCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiCommon.zip",
            checksum: "e5a60895a57a87cd0283561616505061a68873bc7bcf5de0b9d3eea084e581b8"
        ),
        .binaryTarget(
            name: "YotiSDKCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKCommon.zip",
            checksum: "34e14fd1ce857f44e7d54ee02fa1580a3d3ca4a969658ffd6e1d2c0e7fe6726e"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKDesign.zip",
            checksum: "e7f83573e85ea1b97db5f6774a03dc7704d3a76cb7564a141e6a51f196b556f0"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKCore.zip",
            checksum: "0de3683d4fecfc592665379ea2d39417ea42444841a34e838f9fd50b197ef285"
        ),
        .binaryTarget(
            name: "YotiDocumentCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiDocumentCapture.zip",
            checksum: "5375cfec75317de6e2d253b91ddae35b68989e9fe02aa663a345ec45211ee016"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKDocument.zip",
            checksum: "3d9ef4b8341ce5205f8fbe32cf8389dada27c587cc24700fa0481e2087c8344b"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKFace.zip",
            checksum: "713f989fbf449217dd739e80e5348e17a0bca93ef00446a06f6b2e2ff22c97e8"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKFaceTec.zip",
            checksum: "bff3ee9bfe27aee58c203e0137627cdd624aa66b9bf65ce859149b3a262db5e4"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKFaceCapture.zip",
            checksum: "d41a975d4adf1b69432c3ee7766149ff9aae66df6c2424813f577cdbcdd7855d"
        ),
        .binaryTarget(
            name: "YotiFaceCapture",
            url: "https://github.com/getyoti/yoti-face-capture-ios/releases/download/v5.0.0/YotiFaceCapture.zip",
            checksum: "d13fadf136b0fdee4ecc4e247eed83ac43d368789b935f8a5cff2c4b8f8ed3ea"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.18.0/Microblink.xcframework.zip",
            checksum: "70d9f7ef26849b823e61e1375838a15ebb0ca0d4c58ad2b7e24e972261860219"
        ),
        .binaryTarget(
            name: "mrtddump",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/mrtddump.zip",
            checksum: "25f30154c6112ff59108ed84472600591da9a8615c0aed9042895c86f65bf838"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/FaceTecSDK.zip",
            checksum: "cd39b02c38fd7e8882edc245bae5525dc3ddd840e04def1b7632face82d394d6"
        )
    ]
)
