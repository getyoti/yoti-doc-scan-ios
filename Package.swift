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
            checksum: "7278c42aac3036057e5f6442749c7c1beb2c88d1caa2360f0102682e135232a8"
        ),
        .binaryTarget(
            name: "YotiDocumentScan",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiDocumentScan-SPM.zip",
            checksum: "e2749747adc1239ee719fff5e673881ada125d60b9ec51cf285df95afb655194"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiNFC.zip",
            checksum: "5d7a45b2c8ea9d2c6d47274faecc1737f56d054d3a4b35e7da40d59adba9f4c2"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKDesign.zip",
            checksum: "d54bee028e496712d6c279353331d899090d1f5b260b13ee17df6a8652d20cf9"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKCore.zip",
            checksum: "84b2972e171aeda52b577d0565c779cf08a53ee50faef45918bc96fa3883a30b"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKDocument.zip",
            checksum: "613dd2ed748f3d4e65982139745b1f67fab46539c43c6856be019c74f10e71b6"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKIdentityDocument.zip",
            checksum: "6a6458a8eaa278de9f3736e619ab3da86af58c1716a7d63d6b1b2c4ed88fcf49"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKSupplementaryDocument.zip",
            checksum: "593c6c043925d3ac02e95f169eaa622788f83ada4ba87567db6c6e5a4943c202"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKFace.zip",
            checksum: "8e61f94009c3b035bc52f2b089b34002cbcf8ed277ca47171253e7288db54a5a"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKFaceTec-SPM.zip",
            checksum: "3c6ca75ab77ed4386402156d8a62ddf7860ca4086dea38bc6ef62f38a3ca77e1"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/YotiSDKFaceCapture.zip",
            checksum: "9a8a90f6ecfd57f612a44872d26441c6544b929a6d9acd1d806ff5e77edb06d0"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/Microblink.zip",
            checksum: "cc14d283a6dbacbda7cbc274c7ae1712402705a74c471e435dae0c123313ddd5"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.0/FaceTecSDK.zip",
            checksum: "3a09dd568736519970af90abc8c9d618bada494c114a714e17c1d132fafc9069"
        )
    ]
)
