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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/YotiNetwork.zip",
            checksum: "14e6de3da6af728cab372b6ba2d7aa611c855208a75c91bf424bb9d5c522671d"
        ),
        .binaryTarget(
            name: "YotiDocumentScan",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/YotiDocumentScan-SPM.zip",
            checksum: "42e042ddf5def101f43243d6f99a72b33247859e4199f13a497b61a5dc15272c"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/YotiNFC.zip",
            checksum: "05eab9597852dbe6ae6c70c8add9224d7b86bb2d19cf4145a02f3441f346a455"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/YotiSDKDesign.zip",
            checksum: "297a31bf28072e18503639ba48fc33967237e338e844017a9995f150388e9d71"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/YotiSDKCore.zip",
            checksum: "5d9b0bd8b195f351556266e9b25613a44ae41aeffb045627c4475c369d228783"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/YotiSDKDocument.zip",
            checksum: "9d5d3b6b4b4cb0e70beaf6356b0690faeb7e273106c1ec4a50b775c7658ac9ca"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/YotiSDKIdentityDocument.zip",
            checksum: "ded16a82a8b15ccb9181f6bb4762f593ae82031f5d3ba8b6c03904bfaee5c897"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/YotiSDKSupplementaryDocument.zip",
            checksum: "7a60d3ebb948b556a3ea783fbb07867a4fc5df46a83a0a84034038a22d058a52"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/YotiSDKFace.zip",
            checksum: "44aca3730b6235fc58c7ebb7ae3de3a620cadc8f9e88fb137125f0ee9a509815"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/YotiSDKFaceTec-SPM.zip",
            checksum: "2ab93c5027b90890b694f99e2a34e18944a628d6ea0a8a44d1b4c1f62d820f25"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/YotiSDKFaceCapture.zip",
            checksum: "08773735ab8474fa17c2631afff16b0494163551aa41d46fc1a28a471477032d"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/Microblink.zip",
            checksum: "9e0f033c5c3333adefc97721cc48612067a993459b8fe1835b7786fc05cb2bef"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v8.0.0/FaceTecSDK.zip",
            checksum: "06cd5e18ad7d955b88582bb7e4f1d908cdada5650c97ac372028284ddf2b604e"
        )
    ]
)
