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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.1/YotiNetwork.zip",
            checksum: "54c450696381121ea81646f863eb76d78dbd0aeb74438e5d11bdd47a1d29773b"
        ),
        .binaryTarget(
            name: "YotiDocumentScan",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.1/YotiDocumentScan.zip",
            checksum: "49b373a1e6d0cc467adde66da3caef50ced75f142c61862ecb4bda54ec07d33f"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.1/YotiNFC.zip",
            checksum: "91258d1cb45d91b541a744a52f81b1b8f3a8da6d25994fc6097c00b9be18994d"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.1/YotiSDKDesign.zip",
            checksum: "e2404aaec463f682fa982b6aa963f41e27c886fb0d85a65bdc640177ad435290"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.1/YotiSDKCore.zip",
            checksum: "3f7218c157b40194b3043eb9c12e96106a15671cb0ccb8fd1d802ecdda424c99"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.1/YotiSDKDocument.zip",
            checksum: "f9c532a33a17b1ea6768932480a287fff9992e39766e4e0e7a1c7ea35ec04f0f"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.1/YotiSDKIdentityDocument.zip",
            checksum: "ff93c9abc6440ff218f3d35b0682fa43378e8afdb887b017616772171711942a"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.1/YotiSDKSupplementaryDocument.zip",
            checksum: "d05bc7bfd42d517841d507a456e13c6a760f0b8a79788284fea34f579fec6ec7"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.1/YotiSDKFace.zip",
            checksum: "9a5659afa25071c3f18c81cb994baaa7eba499c122ddee8bc10ceb18f4c854f9"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.1/YotiSDKFaceTec-SPM.zip",
            checksum: "41858b6ff8f9ea2ed6190ec93caadc20fc3b16257a6198a87136abb105bb0fab"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.1/YotiSDKFaceCapture.zip",
            checksum: "d5baa6adc9c83cc8c640c1897ad08ac6744838ada34ec3b6d03db42551f89b7e"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.18.0/Microblink.xcframework.zip",
            checksum: "70d9f7ef26849b823e61e1375838a15ebb0ca0d4c58ad2b7e24e972261860219"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.1/FaceTecSDK.zip",
            checksum: "a30f7df3bb9d2be9402af3fc3952f055af5d74317990264c036c762c487938a7"
        )
    ]
)
