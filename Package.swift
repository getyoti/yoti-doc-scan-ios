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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiFoundation.zip",
            checksum: "43abbccff067e1305d9cf1cfdf5753f8f05ff720fe9c0d84f52caa6e0745346b"
        ),
        .binaryTarget(
            name: "YotiNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiNetwork.zip",
            checksum: "c9bb03c857f29e52f255a3a81f40ec72056a8775aec6d322b56b517546a52d7c"
        ),
        .binaryTarget(
            name: "YotiSDKNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKNetwork.zip",
            checksum: "a9c2ccf137c69093b88aa87d4d26b8b78cdcc2b575db6ed093f3a0e622103ed8"
        ),
        .binaryTarget(
            name: "YotiCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiCommon.zip",
            checksum: "237bffa6fa862cdfdc9a4781684cec1f4b40137b2887aa518f1649e54fc31ff6"
        ),
        .binaryTarget(
            name: "YotiSDKCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKCommon.zip",
            checksum: "f2950ba0ab467f3e0b812cc46f2997f7d0e76764cc0e0f260af405ae71c18a47"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKDesign.zip",
            checksum: "98c8c8b301c0b7533c3b5de1b17ab236ebbacef4bc85b71703f5f361bf05ace9"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKCore.zip",
            checksum: "d3813d890ae8c6daff6a076efb269efb6f89e86c2d2fce3a3bdf7985e99fda32"
        ),
        .binaryTarget(
            name: "YotiDocumentCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiDocumentCapture.zip",
            checksum: "4cd8a9632c6b76222738747af75fd73d32f63a1fa346fd212c54ad745515ee7e"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKDocument.zip",
            checksum: "106f67fb7afc7e5473183b649d78ab769e8137143f40eeec73e601179a9c8042"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKFace.zip",
            checksum: "1044edbb18b2a4b12d3d08ee94c1604fce262163be8b6ce8bf111f63232b8975"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKFaceTec.zip",
            checksum: "ae52c65b37f4e4cc3806354b91ef8d94593e15c65b712759eb356d7595e2a8f7"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/YotiSDKFaceCapture.zip",
            checksum: "d1bb6aa93a28c151f5c6b18a5868f3c56078533ef83ec06dbc0f43924a5cc269"
        ),
        .binaryTarget(
            name: "YotiFaceCapture",
            url: "https://github.com/getyoti/yoti-face-capture-ios/releases/download/v5.0.0/YotiFaceCapture.zip",
            checksum: "d13fadf136b0fdee4ecc4e247eed83ac43d368789b935f8a5cff2c4b8f8ed3ea"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.18.0/Microblink.xcframework.zip",
            checksum: "70d9f7ef26849b823e61e1375838a15ebb0ca0d4c58ad2b7e24e972261860219"
        ),
        .binaryTarget(
            name: "mrtddump",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/mrtddump.zip",
            checksum: "25323f2983705b930059f2270df576ea358e32a1eab3f5a58127af9efd635d37"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.0/FaceTecSDK.zip",
            checksum: "8d0d2316bc9c4402187b03f2fa374befb58e97f0da7c3199a936f26752c51c12"
        )
    ]
)
