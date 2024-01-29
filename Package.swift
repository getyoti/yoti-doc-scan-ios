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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiNetwork.zip",
            checksum: "2fb0465acb35dfd7086a0e4f72ed8bb583a87a75a0fc2d36b547a2937ed5f7b8"
        ),
        .binaryTarget(
            name: "YotiDocumentCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiDocumentCapture.zip",
            checksum: "f424390a25ff2c0dc1a1a890e7292ae1e3a038264ffc06a1603a6280eb419330"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiNFC.zip",
            checksum: "77da04c90d43c4856c7cda85e7dd9409447cf9b9918b52ce466d045652967fa5"
        ),
        .binaryTarget(
            name: "YotiFaceCapture",
            url: "https://github.com/getyoti/yoti-face-capture-ios/releases/download/v5.0.1/YotiFaceCapture.zip",
            checksum: "d13fadf136b0fdee4ecc4e247eed83ac43d368789b935f8a5cff2c4b8f8ed3ea"
        ),
        .binaryTarget(
            name: "YotiSDKNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiSDKNetwork.zip",
            checksum: "4b043798861f48582305efa0aad8023f0c998e2a929f6e66387b562fa48454da"
        ),
        .binaryTarget(
            name: "YotiSDKCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiSDKCommon.zip",
            checksum: "91c04ffdf7e1844ce4aa1ae678ca937820232bb416e78fe91800d16ac7c14f9d"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiSDKDesign.zip",
            checksum: "cd64f8c0071bf14b8f27dffdd8d674907fdb091b253851ba48baeae012603254"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiSDKCore.zip",
            checksum: "67ad64c39477bd6750507ffe970e203c44cf90d83153624838c713210e668935"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiSDKDocument.zip",
            checksum: "de846a49eac0706070722970198271ff283df989f8887db488d31e8aa6ea2ce9"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiSDKIdentityDocument.zip",
            checksum: "ac32816017045f89ea27b2b362942710486bd356b56867f910eb9725d80f5fb1"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiSDKSupplementaryDocument.zip",
            checksum: "79109a18f0705bfe48924aabc74049a16bcdb733c014b128558e2bfcf195ade2"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiSDKFace.zip",
            checksum: "8c62f955bea7923ca58bfe5f4c0e8ce347645c791f705b5eb3e155543fce6fcd"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiSDKFaceTec-SPM.zip",
            checksum: "8b6524306a99a38ddfa1c720ac8dd514ceebf59fc1b12ad1aa37254ef1772448"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/YotiSDKFaceCapture.zip",
            checksum: "f621a4d64291a1e62f748688af7671c9c2814bbc8a60b149724e388c82e79b66"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.18.0/Microblink.xcframework.zip",
            checksum: "70d9f7ef26849b823e61e1375838a15ebb0ca0d4c58ad2b7e24e972261860219"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.2/FaceTecSDK.zip",
            checksum: "f97297905a03cd5f9bb2264869dc88a4c11f52191a9c9cb723fcdd5ccec665c6"
        )
    ]
)
