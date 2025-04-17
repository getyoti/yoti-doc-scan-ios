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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/YotiNetwork.zip",
            checksum: "6ec27882563a8e789dc2a6cfa877e7390d4369330177f7f903e8eba8da56112f"
        ),
        .binaryTarget(
            name: "YotiDocumentScan",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/YotiDocumentScan-SPM.zip",
            checksum: "0302b77da86e8f6c3f7dae1fcba6645ab48afcccac3324899090c8da8c71ea88"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/YotiNFC.zip",
            checksum: "461724fc3c423e9fe3d7c632b8cb825b96b3d41827bd901baa8c92b9a3f74b67"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/YotiSDKDesign.zip",
            checksum: "531ea8c3cfbacc6fff038dafd2779592963fefee3ab3591765302d3a65afef35"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/YotiSDKCore.zip",
            checksum: "7a2ba7fb94b339550c2e2084090e0f63caa5beb540d1a8ea133c01b6fd55c1b8"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/YotiSDKDocument.zip",
            checksum: "4ada17f6c87c6f1087bf0ecfe8c64ec722310509b1a591691eb1d16bd04cd90c"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/YotiSDKIdentityDocument.zip",
            checksum: "c674bd39f5f096d2578f08f160ede4983a9a3325600e488e5b33171020d036b0"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/YotiSDKSupplementaryDocument.zip",
            checksum: "0f084f090a18332b547e2b3d691db1e83b164f4df2d019b341dd242fce026360"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/YotiSDKFace.zip",
            checksum: "2af12ea78cbd7f4a0aadcde8e3695ea1d006e8301b663fd400a6fe64e8085232"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/YotiSDKFaceTec-SPM.zip",
            checksum: "9078999ab7ff46c106ca255683f7ea48a970249e168cbf46ccb16c6d51fe8ef1"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/YotiSDKFaceCapture.zip",
            checksum: "720ccb965d6841d1b684599e280337e5db241279a998b153980e7fdff283fb99"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/Microblink.zip",
            checksum: "2551094c9cb9c0dd80d4485259dc661e60d51ba5e0c93db1b7b683ff9ce9fac7"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v7.0.0/FaceTecSDK.zip",
            checksum: "00ef878f9adc9cfbb58012ad48544ddb54267b269310496fd83b284a84af9cf6"
        )
    ]
)
