// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "YotiIDV",
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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/YotiFoundation.zip",
            checksum: "b8247501eca7a9e76b291fab98cb64e30a2d259b170d38abe809350a8b336c8c"
        ),
        .binaryTarget(
            name: "YotiNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/YotiNetwork.zip",
            checksum: "09cccbfb6218d4aa273ee1e77e1be6dca61c5e46ab37786cae37abc69c1d6472"
        ),
        .binaryTarget(
            name: "YotiSDKNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/YotiSDKNetwork.zip",
            checksum: "306b11be9e5463d2363d3e2a3417fe7c3a00d30b38adf8578160637474d4d615"
        ),
        .binaryTarget(
            name: "YotiCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/YotiCommon.zip",
            checksum: "6d865a918ba8944a4928bd3e06b883755b64455f3a75c558fa40132e74151abd"
        ),
        .binaryTarget(
            name: "YotiSDKCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/YotiSDKCommon.zip",
            checksum: "85c1f076859722f1b2effdb5f19f1296374c9058ab26075ea285f9f6bb69082c"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/YotiSDKDesign.zip",
            checksum: "e56e3416bf921d8d50fbe69feff3b58855a21b9b21505502e38081ad19ba56c5"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/YotiSDKCore.zip",
            checksum: "9d904640e89a0ba7923ca3c462bb1c0a44fd2abf0b2a01b40e2e3658b63785cb"
        ),
        .binaryTarget(
            name: "YotiDocumentCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/YotiDocumentCapture.zip",
            checksum: "d1ddb0fb056ed19427af508f4dc75bcd2aa8e596e88a53ba1160773444f32264"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/YotiSDKDocument-SPM.zip",
            checksum: "b44c1d9f842c8d1fd8e034243b04fae87521804af3c7aa69ea25183368cf7f5c"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/YotiSDKFace.zip",
            checksum: "ffc6a7d26542a222f681caf6f57673f1a0bc3153df43bef1bae17dfce4b102ef"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/YotiSDKFaceTec-SPM.zip",
            checksum: "dea5fbb4799d7c971ed7d6f6c3cdee39dd55e2f73cac98db5f5bf68bf14ae531"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/YotiSDKFaceCapture.zip",
            checksum: "41029e955cd639f953bb19cf415aa23e5fd680e2c8822186c4b5c6c86e6aeb87"
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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/mrtddump.zip",
            checksum: "f3f5601c25b4e7c27d9b0236c5686a2e88a665855c14fc4e839cb4d3d2370f2b"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v3.1.2/FaceTecSDK.zip",
            checksum: "9ae3dc50c36b3d86fba75aca848b1148bdcf0084b9de45e50cefc5daf4b2bb36"
        )
    ]
)
