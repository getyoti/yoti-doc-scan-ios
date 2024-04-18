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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.0/YotiNetwork.zip",
            checksum: "3cf3edfedab93de89d7418007594b7080de54156a84b0f944cf5de69cd332d44"
        ),
        .binaryTarget(
            name: "YotiDocumentScan",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.0/YotiDocumentScan.zip",
            checksum: "1f10a9cda564e6bdb6a61c697da238430f07c0acfd1eb0fe7cd09ae4cfeab130"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.0/YotiNFC.zip",
            checksum: "44530c9985368cb85e1b6b1922e341fa420df992e3c176ad1418cb2f984f889b"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.0/YotiSDKDesign.zip",
            checksum: "6fe99e68cdca6edf2c9f6fc2a03eea094d75111dd1fe8578705fbc9d13ef17ef"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.0/YotiSDKCore.zip",
            checksum: "2f50c7696a7be4c513b32c763eccf5e1dd61e106cc971a51b5a9c48aa85b5264"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.0/YotiSDKDocument.zip",
            checksum: "1c8066ab14b2c21434e48c468696b3d5db0752c4cc2cc67cc6e50e4b4d4ea95d"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.0/YotiSDKIdentityDocument.zip",
            checksum: "fb0fe8e1abb26975af28e91671cafb154db1aab4582d6496f9427006caa5f2a4"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.0/YotiSDKSupplementaryDocument.zip",
            checksum: "2cf3937ae1a264cfb5f60bc1a1cd388c9cb5f8738bcd5ca40d7702641ec0a6e0"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.0/YotiSDKFace.zip",
            checksum: "2e3048e9023304e6ccefe2f7e020903d5e865db2075b2841df7dee7924a2ef4b"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.0/YotiSDKFaceTec-SPM.zip",
            checksum: "e8ec497ecc87f112d0ed79a5bdf11ff2a78480926fef6ae8b1c73b637b9b2aeb"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.0/YotiSDKFaceCapture.zip",
            checksum: "3b6667425022e878bc44434f514940ea876cf844b1d9c036444cbb322a3aa900"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.18.0/Microblink.xcframework.zip",
            checksum: "70d9f7ef26849b823e61e1375838a15ebb0ca0d4c58ad2b7e24e972261860219"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v5.0.0/FaceTecSDK.zip",
            checksum: "9cfe429bee3232bf707dcfd5091df1cf09b37b21e7d1b5d5adb87d40564ea5d8"
        )
    ]
)
