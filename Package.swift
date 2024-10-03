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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.0.0/YotiNetwork.zip",
            checksum: "9972458a1757b39ade5b7eb35a4f775debf5194a54e9b17cbefeec3709ae8675"
        ),
        .binaryTarget(
            name: "YotiDocumentScan",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.0.0/YotiDocumentScan.zip",
            checksum: "d715f7cf70df26a0f2fd72ab95b8894c2958604fde3b8bb0fec6798a88f42c4d"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.0.0/YotiNFC.zip",
            checksum: "088b95677603f965a2e4177a9225af84b6248724d017153248dc8cf2548972f5"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.0.0/YotiSDKDesign.zip",
            checksum: "c9c8038b906f07ba237326a2862d5ff86a4e45554a5fedf8606379ef31ae392e"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.0.0/YotiSDKCore.zip",
            checksum: "1ca3dad66e521791e381d295ba7ac8165af05cb4ff7a24b37696d94f7978f361"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.0.0/YotiSDKDocument.zip",
            checksum: "8b8273ce836e614f5a04b047f7c9c8d3a7be8a94043a70577ec4b21170f7ea10"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.0.0/YotiSDKIdentityDocument.zip",
            checksum: "d8d66acc522516d920ef0dc5e1793fa0b8d5ef6d8982f376d137a05321bce640"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.0.0/YotiSDKSupplementaryDocument.zip",
            checksum: "6f071919307bb516623a3e0783419bb4cf74d3cfa64241c3c6e85b1bbd891019"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.0.0/YotiSDKFace.zip",
            checksum: "352a3927ed1dc5274fed890de6ce8b25f4354dad5f1c8ee43770ffb2d74868a1"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.0.0/YotiSDKFaceTec-SPM.zip",
            checksum: "e126605409814f6c4c8dad74004f0bccdfa23580298f020efff0c11d8f81ecd6"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.0.0/YotiSDKFaceCapture.zip",
            checksum: "9f30ad386bcf56d047613296f0462954676d6a4944d8836afbc722a68dd56992"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.18.0/Microblink.xcframework.zip",
            checksum: "70d9f7ef26849b823e61e1375838a15ebb0ca0d4c58ad2b7e24e972261860219"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.0.0/FaceTecSDK.zip",
            checksum: "a5161f3b04ab67dad3b4bc441802762d19c81c77f3c5a49a6f266c17b9982b59"
        )
    ]
)
