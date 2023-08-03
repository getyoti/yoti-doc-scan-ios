// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "YotiIDV",
    products: [
        .library(
            name: "YotiSDKIdentityDocument",
            targets: [
                "YotiNetwork",
                "YotiDocumentCapture",
                "YotiNFC",
                "YotiSDKNetwork",
                "YotiSDKCommon",
                "YotiSDKDesign",
                "YotiSDKCore",
                "YotiSDKDocument",
                "YotiSDKIdentityDocument",
                "Microblink"
            ]
        ),
        .library(
            name: "YotiSDKSupplementaryDocument",
            targets: [
                "YotiNetwork",
                "YotiSDKNetwork",
                "YotiSDKCommon",
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
                "YotiSDKNetwork",
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
                "YotiNetwork",
                "YotiFaceCapture",
                "YotiSDKNetwork",
                "YotiSDKCommon",
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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiNetwork.zip",
            checksum: "81ce69c4fe46ca397fbafe579aed2b676b42c36b708bc815baa07716fd2a35d5"
        ),
        .binaryTarget(
            name: "YotiDocumentCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiDocumentCapture.zip",
            checksum: "ab9f89fc1551110372cb8be538240fc65a3479939bc7e4e9176889ed0365c767"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiNFC.zip",
            checksum: "7dbfeb9b271b78e406d777a6e9eefc65c5fa08260a9fd708db806c7fc7328e63"
        ),
        .binaryTarget(
            name: "YotiFaceCapture",
            url: "https://github.com/getyoti/yoti-face-capture-ios/releases/download/v5.0.1/YotiFaceCapture.zip",
            checksum: "d13fadf136b0fdee4ecc4e247eed83ac43d368789b935f8a5cff2c4b8f8ed3ea"
        ),
        .binaryTarget(
            name: "YotiSDKNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiSDKNetwork.zip",
            checksum: "d628bd61b521455499d01fca76cf1a38026c4cfadd465cc0f05bb8ff19b42af9"
        ),
        .binaryTarget(
            name: "YotiSDKCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiSDKCommon.zip",
            checksum: "6e0dd7af088e60c5887a67ff467726e66b6360532784cd2b59006e82d5f616ba"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiSDKDesign.zip",
            checksum: "3492a3c61e9a9fb5ad3ddf4e989187a89d8ab7784892c670ca4120e7b1b2b6a5"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiSDKCore.zip",
            checksum: "c908d65e973f3c8de83d75065febeb9023627ffd7bf7d343edfa431ffa8a79b9"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiSDKDocument.zip",
            checksum: "3fa4a75426f8f0ef377dd6d2bf9098cbb2fc777f6c7390570875c83f76ccfab2"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiSDKIdentityDocument.zip",
            checksum: "f6db5c15880001e55167ecff2140874bdad5d241f1b3ef5969fb4b3326bed6ac"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiSDKSupplementaryDocument.zip",
            checksum: "a86327fdc47b8ea76685ba2abe2bea7d35ddd9560d44b146a2098c90e4f47101"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiSDKFace.zip",
            checksum: "74f969808e3b326e180432bc5d8caa35d5d234fb10216ad283611baa0ecb0998"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiSDKFaceTec-SPM.zip",
            checksum: "794886d2e9247d528ab963e3f056dd63a733ddd686f690be09fb20bf7b770c86"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/YotiSDKFaceCapture.zip",
            checksum: "62bde9028cc96c7bfc77849c3c1c6401309d65505346716ed1b5bc663f1fe8a5"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.18.0/Microblink.xcframework.zip",
            checksum: "70d9f7ef26849b823e61e1375838a15ebb0ca0d4c58ad2b7e24e972261860219"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.1/FaceTecSDK.zip",
            checksum: "12553e1be18eb9df4284e4496503a7a1ef5b4f14742e633a516b8433a1a3c2ec"
        )
    ]
)
