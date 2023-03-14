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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/YotiFoundation.zip",
            checksum: "4d08b3e80901f087d0ad8e7d947cf1f62e4e6a32aba42e8ea0956435c3d3972c"
        ),
        .binaryTarget(
            name: "YotiNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/YotiNetwork.zip",
            checksum: "9f82dc71dda83fbe5f7d29a660b2578d9049ff584178722d9a14fd96767feed8"
        ),
        .binaryTarget(
            name: "YotiSDKNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/YotiSDKNetwork.zip",
            checksum: "82a29d7f59059ea1f6820487aa39315cb8f3062f1ccbede1dcb2dc5192da5149"
        ),
        .binaryTarget(
            name: "YotiCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/YotiCommon.zip",
            checksum: "ed0a622f7a268490e815bb33a009642e26fd02a015d25990fda407719e0aa938"
        ),
        .binaryTarget(
            name: "YotiSDKCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/YotiSDKCommon.zip",
            checksum: "98ad3d731a9fa4fbf709d044bfa2538f5d62687494fad36ac45fb3c2c97dd3af"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/YotiSDKDesign.zip",
            checksum: "7397873ec90a97c832acd75c75cdb65c03c32778777f6507f4d7e89923d665b2"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/YotiSDKCore.zip",
            checksum: "cc293cd9d6769d3fa3b7f04b80d402ef5b1b61ec3484435a82139b461a1b0c2f"
        ),
        .binaryTarget(
            name: "YotiDocumentCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/YotiDocumentCapture.zip",
            checksum: "d93eddd5cbe1f2a5010bd86a65b8e68f39119a84f836aea1ef1cb230b5066959"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/YotiSDKDocument.zip",
            checksum: "7ce3e86a7f34d46a55ccac81108b93ff642d655a5516fa7e0cd3f1cbc7dbc1c6"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/YotiSDKFace.zip",
            checksum: "e497be7ca151bd81d933a79b6b24ce27938f5154d6d24300297ef637760c4217"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/YotiSDKFaceTec.zip",
            checksum: "93e81ac75c74997437f6201c733825cd76b43ec5eb2c98527a80408baf214b9d"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/YotiSDKFaceCapture.zip",
            checksum: "87675146239b294b8b7af015d99f525d8c1d472fe2d936edbcb4c2e5e081e1bc"
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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/mrtddump.zip",
            checksum: "54b3713f44ba20daabfb4f3a5a68beebefa12c468bc3d1cf6f4070d43269e049"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.1/FaceTecSDK.zip",
            checksum: "6728109933e1a89815a070208ea94b34690fe7ab22ffea3d1759a87f79d6d1c6"
        )
    ]
)
