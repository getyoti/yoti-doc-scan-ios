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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/YotiNetwork.zip",
            checksum: "fd18d11afc1c4235d6c781c4c449e6db88c719fb3372fde8d127040df4a2cad8"
        ),
        .binaryTarget(
            name: "YotiDocumentScan",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/YotiDocumentScan-SPM.zip",
            checksum: "eab773e2911feb3fcc52293ff6763d32f48963fa1d8d6bcfa2abdd54d2cc3819"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/YotiNFC.zip",
            checksum: "d83bbb2b37d36ddd9a8b3cf91695ad52d2a1a963191836d17913d432c5707347"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/YotiSDKDesign.zip",
            checksum: "77d283862367ba8e4c7f9190cf10b3448ff93c0a82dd2f9209d12b8e1077a118"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/YotiSDKCore.zip",
            checksum: "7aeee8619c2ffdd3ec2083349abcef3a61ac89b988e53b9a9d9f0538195c9cb9"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/YotiSDKDocument.zip",
            checksum: "fb1bbffe34776b891e8f99f942ab7a9a6ed6247f2144b71f4641079bf4d59f36"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/YotiSDKIdentityDocument.zip",
            checksum: "3867f3ed8513810cae78705689fb4bc3bd1647ee8bc0037f6ab77d702aeac269"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/YotiSDKSupplementaryDocument.zip",
            checksum: "f604d9eaa34d98aa349bf62e7c10840458be7ee4239d8dd45776d22bc8740185"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/YotiSDKFace.zip",
            checksum: "ed300f48e33b14979f69135df30537bc30dbcbaae24f2e0c579eb7c8b3908c86"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/YotiSDKFaceTec-SPM.zip",
            checksum: "683774335f99eba1ea5d578a6f4a3aae25b15d82190623708fca3871b3b25a4c"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/YotiSDKFaceCapture.zip",
            checksum: "59a9ae60d9648ba8b9d4b9fcafc74e4dd3afe5ac552e93b22db3e38bbac09d93"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/Microblink.zip",
            checksum: "67ce8f3206c456742dd4ebbee291be486d493bfc0ca38378720423ec99d87581"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.1.1/FaceTecSDK.zip",
            checksum: "58561e6a9e01a94b5ddc3a4730bcbcd61ad23f4558844bee0d154f00a6bb3b09"
        )
    ]
)
