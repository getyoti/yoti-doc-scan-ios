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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.1.0/YotiNetwork.zip",
            checksum: "87c96c5b0ed1430d58dbca45dc0c7af4cad7fc81587f43ddb7af41f0c7d547f1"
        ),
        .binaryTarget(
            name: "YotiDocumentScan",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.1.0/YotiDocumentScan.zip",
            checksum: "47a2411c516724ecf59af6f951354a0ceaf55c0f2e26371a8f2747e5f3cf44ae"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.1.0/YotiNFC.zip",
            checksum: "c16f467ed12478fdab6415bd3becce6a54c29d109c928c108c208c27a3dc8a01"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.1.0/YotiSDKDesign.zip",
            checksum: "d6f621a626a379ca7c7ce627e19898ddf844d1f3ed7e3cb37de0ead2ef7ac40c"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.1.0/YotiSDKCore.zip",
            checksum: "d0db63881d9092d2a5ce5776fbf8915eec476b2cdb5188f012f1f90c97507064"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.1.0/YotiSDKDocument.zip",
            checksum: "62a2614b898429af28e8cf6fcc546858c94dcfcaf1c903960d9f8b3e0583f805"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.1.0/YotiSDKIdentityDocument.zip",
            checksum: "c03a98d248eb55b993663d8d9ba6b1982ee92d51c132893a9571b204c65332cf"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.1.0/YotiSDKSupplementaryDocument.zip",
            checksum: "da8135c753ebbf9b1e6b82da4a633733f15ad1ff49a570f3cb15932230643423"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.1.0/YotiSDKFace.zip",
            checksum: "833b3e480c279326fc6f83fe9223bf26f66ab974169e9974c259e4abecd34816"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.1.0/YotiSDKFaceTec-SPM.zip",
            checksum: "433fa6ca63d89a0c0a6893f9cabd19b7da68b4aa703103210acd81446c4c927a"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.1.0/YotiSDKFaceCapture.zip",
            checksum: "08dba4e2aa0f96c3c30bf7e6909a6933708ec867e1de7e643c0ad29fb29a40ab"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.18.0/Microblink.xcframework.zip",
            checksum: "70d9f7ef26849b823e61e1375838a15ebb0ca0d4c58ad2b7e24e972261860219"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v6.1.0/FaceTecSDK.zip",
            checksum: "da7d385ab5bd8074f6d5839deac320740ca72dab816c6d18e77ef3cfc5e12096"
        )
    ]
)
