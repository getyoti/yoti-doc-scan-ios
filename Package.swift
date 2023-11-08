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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiNetwork.zip",
            checksum: "a538423afd3a4f073c34700145a0ad3d3ce803e0f901eeecebe0e00b339ecde9"
        ),
        .binaryTarget(
            name: "YotiDocumentCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiDocumentCapture.zip",
            checksum: "d3165010023f7b1181d4798274d995bb3e16c9e455eaf90418332b3a02424119"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiNFC.zip",
            checksum: "31bc90028b4d23a3e3b86105f0e81c492fea51c11c7b77ba70a5db4fda338314"
        ),
        .binaryTarget(
            name: "YotiFaceCapture",
            url: "https://github.com/getyoti/yoti-face-capture-ios/releases/download/v5.0.1/YotiFaceCapture.zip",
            checksum: "d13fadf136b0fdee4ecc4e247eed83ac43d368789b935f8a5cff2c4b8f8ed3ea"
        ),
        .binaryTarget(
            name: "YotiSDKNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiSDKNetwork.zip",
            checksum: "7d673d64e3bcac5a9174c118fd8cccb75de52aeaa4289930a1083a6d2538761d"
        ),
        .binaryTarget(
            name: "YotiSDKCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiSDKCommon.zip",
            checksum: "049a4d5f6c7d9d24077bdc209e411bc48f00a951c8c6647751e679eefd33b6b0"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiSDKDesign.zip",
            checksum: "cf207b9dfcfe443fb2a42cbe6913cedd9799b065cae841e908a781c8176cdeb9"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiSDKCore.zip",
            checksum: "e38517e8741dc6943a72f53323a9077b6564635e8773d6afcac612c55240ddf9"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiSDKDocument.zip",
            checksum: "b8e794cae89b23e2ab7bb131bf30a4d508a9f7e5e5348c6470f0276df4f1d4bb"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiSDKIdentityDocument.zip",
            checksum: "43f8638f7a5bff01b79c73ece130d0a61909ad167fcda87aaaf98514f3b9fd8d"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiSDKSupplementaryDocument.zip",
            checksum: "781705d87a37a555aae0fccaba8a709d55a0466117cb4783a9b64f105aded859"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiSDKFace.zip",
            checksum: "3e65f6dd5b9e78d9a5baf21ff243a4a13345d03599c265f9b9b4c404b30c26b8"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiSDKFaceTec-SPM.zip",
            checksum: "e7ba99aac6239453f49eb650433e48ca23e534c7af160e8477e1abb6be4b8990"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/YotiSDKFaceCapture.zip",
            checksum: "1e1fd7c19e25c33ab6b0fbeb977fd92eee8a4c419379cacbe6c5b401125e5092"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.18.0/Microblink.xcframework.zip",
            checksum: "70d9f7ef26849b823e61e1375838a15ebb0ca0d4c58ad2b7e24e972261860219"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.1/FaceTecSDK.zip",
            checksum: "603b9d64f976160473914775d593606568f5321b162cdf3299a2b9da8f1e2c62"
        )
    ]
)
