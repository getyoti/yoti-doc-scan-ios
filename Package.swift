// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "YotiIDV",
    products: [
        .library(
            name: "YotiDocumentScan",
            targets: [
                "YotiDocumentScan",
                "BlinkID"
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
                "YotiSDKFaceTec"
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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v9.0.0/YotiNetwork.zip",
            checksum: "fcc88685efb4dbbf90e6e51fd716b1435bce2ac7e2d1bcaa59eac5151767704d"
        ),
        .binaryTarget(
            name: "YotiDocumentScan",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v9.0.0/YotiDocumentScan-SPM.zip",
            checksum: "54de8366f779e5ef736fc8bb5947f4f716651b3135ed2c9a1f73df0e70ad9a98"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v9.0.0/YotiNFC.zip",
            checksum: "c2e3df3fc33a70c7429d7a51ba993fc3392dd41571a6e1ebb385b0db55fd89f8"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v9.0.0/YotiSDKDesign.zip",
            checksum: "218d69cff8f88925d4c3c521ff670cc612ef497bf8282dcb1838f886fc86df7e"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v9.0.0/YotiSDKCore.zip",
            checksum: "ddf9df5225ff097775259a9dc601a403ecb75e36e5618cd9120a2b943459dd3a"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v9.0.0/YotiSDKDocument.zip",
            checksum: "171ec07d1706a95cc3b3ecc7d652694a71e22c14877306b8d515d5803a8d3218"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v9.0.0/YotiSDKIdentityDocument.zip",
            checksum: "dd6cabcbe919fcf3b07586f5261e515c6b4cd7c034c3ac69ce03ae7c58342ea7"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v9.0.0/YotiSDKSupplementaryDocument.zip",
            checksum: "b2d74a6cc9f82a2f6f979c980b9acfa7c42e54bbd3d6c26d7a66a8148981409a"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v9.0.0/YotiSDKFace.zip",
            checksum: "5db11281c74f2c925df00900f0504c8793067f59dff337e841c8be3860cdee6f"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v9.0.0/YotiSDKFaceTec.zip",
            checksum: "198a54e4ec3fc2d894336e945ce646d047a08d9d9dfb64bdaa85df27a2993fa7"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v9.0.0/YotiSDKFaceCapture.zip",
            checksum: "5fcdbdb7e2c40bc696266fa09f4a5f01fe2d32634dfa113c24c07f5e4b7f9b8d"
        ),
        .binaryTarget(
            name: "BlinkID",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v9.0.0/BlinkID.zip",
            checksum: "059b362edad137d94ca73b4c1f47dc9e003c0ab41ebce5cee674e32425a0a651"
        )
    ]
)
