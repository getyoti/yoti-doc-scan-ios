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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiNetwork.zip",
            checksum: "471e09683547006eda237f92773d1d98a396063a1d68fc271b2c00a76b82b1ef"
        ),
        .binaryTarget(
            name: "YotiDocumentCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiDocumentCapture.zip",
            checksum: "b8a800dab150fbf98fc90f6347b2f9a7ec56c028bef0b0d56187f7a8646a6261"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiNFC.zip",
            checksum: "4f1ff5ec79a6368b7221107cbabfc3f5c133208cdeaff7f8ad8303da9358f41f"
        ),
        .binaryTarget(
            name: "YotiFaceCapture",
            url: "https://github.com/getyoti/yoti-face-capture-ios/releases/download/v5.0.1/YotiFaceCapture.zip",
            checksum: "d13fadf136b0fdee4ecc4e247eed83ac43d368789b935f8a5cff2c4b8f8ed3ea"
        ),
        .binaryTarget(
            name: "YotiSDKNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiSDKNetwork.zip",
            checksum: "99a97551c4704adaebf4c6859005c5f9b710db8d1fb25d5615e50e5cede0554e"
        ),
        .binaryTarget(
            name: "YotiSDKCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiSDKCommon.zip",
            checksum: "2721850601e128c8fc55b0b33452ff60c398a8142928eb50ac8a882c7fc638b6"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiSDKDesign.zip",
            checksum: "6c109fbeef704be9ea3151c5528bf581446b1bca2bfaa8c1de1110cbac555d9b"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiSDKCore.zip",
            checksum: "5f4d714a11256d2b29480680f5724147eb7766b7404fda456ad10b84033c8852"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiSDKDocument.zip",
            checksum: "7f0cbec4622d29c13430b7990575b26068d8e26fd096f27ee5755cd65305aafd"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiSDKIdentityDocument.zip",
            checksum: "b2311ecd961c7bb51f8ca8343c10561edde413b9c025db18a962e6d1ac387dc8"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiSDKSupplementaryDocument.zip",
            checksum: "9f742e465b6b2f2fbc715d77db6d82250e25c07fe29da8c29409a5aed9e8b0e2"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiSDKFace.zip",
            checksum: "bc707926d905775aadeabad7ca928b7f044fc13fec5e65054157393bc39d70bf"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiSDKFaceTec-SPM.zip",
            checksum: "9080a1e8ca434cc9e730596e829a0458feffcfdcedc7dbd509e142e6a61f211d"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/YotiSDKFaceCapture.zip",
            checksum: "e2c427f347a17434414a09e965f10665b371495fbc933a0a53d022c761d4f2d6"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.18.0/Microblink.xcframework.zip",
            checksum: "70d9f7ef26849b823e61e1375838a15ebb0ca0d4c58ad2b7e24e972261860219"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.0.0/FaceTecSDK.zip",
            checksum: "768677f5fb07699d71911a854e87d01b0a00f04918fc192320e932d23409b714"
        )
    ]
)
