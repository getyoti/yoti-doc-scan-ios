// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "YotiIDV",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "YotiSDKDocument",
            targets: [
                "YotiFoundation",
                "YotiNetwork",
                "YotiSDKNetwork",
                "YotiCommon",
                "YotiSDKCommon",
                "YotiSDKDesign",
                "YotiSDKCore",
                "YotiDocumentCapture",
                "YotiSDKDocument",
                "Microblink",
                "mrtddump"
            ]
        ),
        .library(
            name: "YotiSDKFaceTec",
            targets: [
                "YotiFoundation",
                "YotiNetwork",
                "YotiSDKNetwork",
                "YotiCommon",
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
                "YotiFoundation",
                "YotiNetwork",
                "YotiSDKNetwork",
                "YotiCommon",
                "YotiSDKCommon",
                "YotiSDKDesign",
                "YotiSDKCore",
                "YotiSDKFace",
                "YotiSDKFaceCapture",
                "YotiFaceCapture"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "YotiFoundation",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/YotiFoundation.zip",
            checksum: "2520e2c0ed504db93c7953f147da23803d490786cc16a4b69dc904fef19d3fbb"
        ),
        .binaryTarget(
            name: "YotiNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/YotiNetwork.zip",
            checksum: "867e07e89247b9a8016e9867f432dee1beb73142c53170e46493b89c49c657ab"
        ),
        .binaryTarget(
            name: "YotiSDKNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/YotiSDKNetwork.zip",
            checksum: "f81758277ee5688a569fa93f10ddb00c382e171438f5e3b5abbdf71ba5a21a9d"
        ),
        .binaryTarget(
            name: "YotiCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/YotiCommon.zip",
            checksum: "3db67b557483f80598f877031b2ddd1702dad190d1548e0fe5329509878903ba"
        ),
        .binaryTarget(
            name: "YotiSDKCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/YotiSDKCommon.zip",
            checksum: "ca824f47b438793d49b4737248c5995bb7d149be356faa157de1d37f775edd1e"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/YotiSDKDesign.zip",
            checksum: "e3e4c68d6d0de314671eb19bdbeac40314a7883486e2498e83a8bdb7b7282e04"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/YotiSDKCore.zip",
            checksum: "f00b8a2a82fa7ba7b2d22a74bcacb1307bfec746720b48195dc2c9cd6d3396cd"
        ),
        .binaryTarget(
            name: "YotiDocumentCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/YotiDocumentCapture.zip",
            checksum: "2a51e6402a5b941484b83e159ca1595e277674d7eca60e8ad3d45e0c5fa67c5f"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/YotiSDKDocument.zip",
            checksum: "316f4acebf265ef9a839d41cd5f6281e07e030cf9bbeec1442e8e9dc9ffdacfc"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/YotiSDKFace.zip",
            checksum: "ee68a08634ab9293899b4fe8fde11e10d072583cd5a984c114ae52aba0613d3c"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/YotiSDKFaceTec.zip",
            checksum: "d2ff6b65d969359031c6d55f9042180cb2f9cebfa307e9ddf203d8cf4414f047"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/YotiSDKFaceCapture.zip",
            checksum: "bac0019e8e128fb14adeb9615e2f0d08a8cdea2c7b50f13deb538563d5c08fa5"
        ),
        .binaryTarget(
            name: "YotiFaceCapture",
            url: "https://github.com/getyoti/yoti-face-capture-ios/releases/download/v4.1.1/YotiFaceCapture.zip",
            checksum: "c6ab7bbc08bf23a0326fff102b6674b83fcdf9dec69bb84292296cf6aee9e324"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.14.0/Microblink.xcframework.zip",
            checksum: "9141225f23ab93ddaecc76054590561da1b00015b19435c5c4a25e5545504b8a"
        ),
        .binaryTarget(
            name: "mrtddump",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/mrtddump.zip",
            checksum: "afcd3608f7f36f6b9bd02899e941964ccc34b680eb2189ca34cb4bf2899b50f4"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.0.3/FaceTecSDK.zip",
            checksum: "d3ae4cf1c31ce73aa7f5e8b88371da70d7f2a9b4f2cba5057b6d026c54c0166c"
        )
    ]
)
