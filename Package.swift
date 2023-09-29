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
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiNetwork.zip",
            checksum: "206a6794c1346156fa79d874598ff2aacf5e94345cc6b079f2bf3f3f9e727cca"
        ),
        .binaryTarget(
            name: "YotiDocumentCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiDocumentCapture.zip",
            checksum: "6ddd3bfe7af1e558783f35af6d1436f70257558ac0ef9cb3e24aa486aff26633"
        ),
        .binaryTarget(
            name: "YotiNFC",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiNFC.zip",
            checksum: "70d3f3bfa7e41aaaa6263ad11120d34211ae41d980e57741522b72da4228bf71"
        ),
        .binaryTarget(
            name: "YotiFaceCapture",
            url: "https://github.com/getyoti/yoti-face-capture-ios/releases/download/v5.0.1/YotiFaceCapture.zip",
            checksum: "d13fadf136b0fdee4ecc4e247eed83ac43d368789b935f8a5cff2c4b8f8ed3ea"
        ),
        .binaryTarget(
            name: "YotiSDKNetwork",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiSDKNetwork.zip",
            checksum: "017d1619186b36728d346a37b648bfa77632cfe8414fd074a032407cd8012895"
        ),
        .binaryTarget(
            name: "YotiSDKCommon",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiSDKCommon.zip",
            checksum: "c4515149d270b1ad5d28e520d08eccdcd34179f0b89d6960b97c0129781f8d2b"
        ),
        .binaryTarget(
            name: "YotiSDKDesign",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiSDKDesign.zip",
            checksum: "1e888fef1a0fb451f17366f07b30482dd414563e16b88ea3cf688d570c6dd973"
        ),
        .binaryTarget(
            name: "YotiSDKCore",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiSDKCore.zip",
            checksum: "ce45c2708eed47da2605e0728fbaf91bd3875c085fb0513e621cafb7176c6891"
        ),
        .binaryTarget(
            name: "YotiSDKDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiSDKDocument.zip",
            checksum: "c777c809875384df2e7e5b83ac152bd45f44a19e0bdd43c310137cd5be00947a"
        ),
        .binaryTarget(
            name: "YotiSDKIdentityDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiSDKIdentityDocument.zip",
            checksum: "8894295519262b006fb9fe3c119a21e2eae7c4d7b9358c8705ee379bac84ce93"
        ),
        .binaryTarget(
            name: "YotiSDKSupplementaryDocument",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiSDKSupplementaryDocument.zip",
            checksum: "e30f6d534553d36fd335c2a562d6f123b016b5f6df76426876db41438b4b943a"
        ),
        .binaryTarget(
            name: "YotiSDKFace",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiSDKFace.zip",
            checksum: "e97252a274e76d8e70757e5e3ba660292dcd0604cf2a1b8eb8bca0a369ad11e9"
        ),
        .binaryTarget(
            name: "YotiSDKFaceTec",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiSDKFaceTec-SPM.zip",
            checksum: "c6e1700e29a3756e9a233934410ce04aa06132a40cbbd38abd9e70b6f01f1eb8"
        ),
        .binaryTarget(
            name: "YotiSDKFaceCapture",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/YotiSDKFaceCapture.zip",
            checksum: "09842055bef3692ae7346f112cd24995a8a3330920934ed35bef2dfdb5b6c36b"
        ),
        .binaryTarget(
            name: "Microblink",
            url: "https://github.com/BlinkID/blinkid-ios/releases/download/v5.18.0/Microblink.xcframework.zip",
            checksum: "70d9f7ef26849b823e61e1375838a15ebb0ca0d4c58ad2b7e24e972261860219"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            url: "https://github.com/getyoti/yoti-doc-scan-ios/releases/download/v4.1.0/FaceTecSDK.zip",
            checksum: "716ef083a51e237ed3d88df71bdc03396b4154e0427e4153af037f478268d88c"
        )
    ]
)
