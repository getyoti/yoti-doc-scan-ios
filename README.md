# Yoti IDV, iOS SDK

![Illustration](./Illustration.png)

Our SDK allows a user of your app to scan or take a photo of their document and/or face, we then verify this instantly and prepare a response that your system can retrieve on your hosted site.

## Prerequisites
To integrate with our SDK, a working infrastructure is needed － see [developers.yoti.com](https://developers.yoti.com/identity-verification/overview) for more details.

## Requirements
iOS 14+

## Integration
### Swift Package Manager
Add the following line to your `Package.swift` file:
```swift
.package(url: "https://github.com/getyoti/yoti-doc-scan-ios.git", from: "7.0.0")
```
...or add our package in Xcode via `File -> Swift Packages -> Add Package Dependency...` using the URL of this repository.

If you include `YotiSDKIdentityDocument` in your target, then consider to also include `YotiDocumentScan` and/or `YotiNFC` for identity document OCR and NFC. If you include `YotiNFC`, make sure to weak-link your binary to `CoreNFC` as well.

### CocoaPods
Add the following to your [`Podfile`](https://guides.cocoapods.org/using/the-podfile.html) and run `pod install` from its directory:
```
platform :ios, '14.0'

target 'TargetName' do
  use_frameworks!
  pod 'YotiDocumentScan'                // Include if `YotiSDKIdentityDocument` is included and to support identity document OCR
  pod 'YotiNFC'                         // Include if `YotiSDKIdentityDocument` is included and to support identity document NFC
  pod 'YotiSDKIdentityDocument'         // Optional
  pod 'YotiSDKSupplementaryDocument'    // Optional
  pod 'YotiSDKFaceTec'                  // Optional
  pod 'YotiSDKFaceCapture'              // Optional
end
```

### Carthage
#### 1. Configure and build your dependencies
Add the following to your [`Cartfile`](https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile) and run `carthage bootstrap --platform iOS --use-xcframeworks` from its directory:
```
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiNetwork.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiDocumentScan.json"                // Include if `YotiSDKIdentityDocument` is included and to support identity document OCR
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiNFC.json"                         // Include if `YotiSDKIdentityDocument` is included and to support identity document NFC
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKDesign.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKCore.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKDocument.json"                 // Include if `YotiSDKIdentityDocument` or `YotiSDKSupplementaryDocument` is included
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKIdentityDocument.json"         // Optional
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKSupplementaryDocument.json"    // Optional
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKFace.json"                     // Include if `YotiSDKFaceTec` or `YotiSDKFaceCapture` is included
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKFaceTec.json"                  // Optional
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKFaceCapture.json"              // Optional
```

#### 2. Embed dependencies and link your binary to them
Locate your fetched dependencies in `$(PROJECT_DIR)/Carthage/Build/**`, and add them to `General` → `Frameworks, Libraries and Embedded Content`. Make sure to `Embed & Sign` these dependencies and to point your target's `FRAMEWORK_SEARCH_PATHS` to their directory.

You should also ensure that your binary and dependencies are linked in `Build Phases` → `Link Binary With Libraries`. If you've embedded `YotiNFC` in your target, then make sure to weak-link your binary to `CoreNFC` as well.

## Usage
### 1. Import frameworks
Import the frameworks needed for your implementation:
```swift
import YotiSDKCore
import YotiSDKIdentityDocument          // Optional
import YotiSDKSupplementaryDocument     // Optional
import YotiSDKFaceTec                   // Optional
import YotiSDKFaceCapture               // Optional
```

### 2. Launch the SDK
Initialize and present `YotiSDKNavigationController`:
```swift
let navigationController = YotiSDKNavigationController()
navigationController.sdkDataSource = self
navigationController.sdkDelegate = self
present(navigationController, animated: true, completion: nil)
```

### 3. Specify a configuration
Conform to `YotiSDKDataSource`:
```swift
func configuration() -> YotiSDKConfiguration {
    .init(
        sessionID: "",
        sessionToken: "",
        // If `singleFlow` is true, `moduleTypes` must contain exactly one module type.
        // If `singleFlow` is false, `moduleTypes` must contain at least one module type.
        singleFlow: false,
        moduleTypes: [
            YotiSDKIdentityDocumentModule.self,         // Optional
            YotiSDKSupplementaryDocumentModule.self,    // Optional
            YotiSDKFaceTecModule.self,                  // Optional
            YotiSDKFaceCaptureModule.self               // Optional
        ],
        // If `theme` is nil, our default theme is used.
        // `YotiSDKThemeBuilder` can be used to build a custom theme, in which we support:
        // - Light and dark mode color themes. We also support specifying only a primary color for each mode
        // - Typography theme (system and custom fonts, font weight, size, line height multiple and kern)
        // - Spacing mode (compact, regular and relaxed)
        // - Shape theme (corner radius and border width)
        // - Icon theme (custom vectors, system and custom SF Symbols, incl. localized ones)
        // - Illustration theme (custom vectors)
        theme: YotiSDKThemeBuilder {
            // All customisation types are optional, and each one can be set independently from the others.
            $0.spacingMode = .compact
            ...
        }.build()
    )
}
```

### 4. Handle the result
Conform to `YotiSDKDelegate`:
```swift
func didFinish(statusCode: Int) {
    dismiss(animated: true)
    print(statusCode)
}
```

### 5. Modify the properties and capabilities of your project's target
Add [`NSCameraUsageDescription`](https://developer.apple.com/documentation/bundleresources/information_property_list/nscamerausagedescription) to your `Info.plist`.

If `YotiNFC` is included in your target, then you should also:
- Add [`NFCReaderUsageDescription`](https://developer.apple.com/documentation/bundleresources/information_property_list/nfcreaderusagedescription) to your `Info.plist`
- Add [`com.apple.developer.nfc.readersession.iso7816.select-identifiers`](https://developer.apple.com/documentation/bundleresources/information_property_list/select-identifiers) to your `Info.plist` and include [`A0000002471001`](https://www.icao.int/publications/Documents/9303_p10_cons_en.pdf) as an application identifier for your app to support
- Turn on [`Near Field Communication Tag Reading`](https://developer.apple.com/documentation/corenfc/building_an_nfc_tag-reader_app) under the Signing & Capabilities tab for your project’s target

## Supported languages
Our SDK supports the 9 languages listed in the table below, but their use is driven by the localization configuration of your target. If your target only supports a subset of our SDK's supported languages, our SDK will fall back to English on the ones your target doesn't support.

Language | Code
:-- | :--
Arabic | ar
Dutch | nl
English (default) | en
French | fr
German | de
Italian | it
Russian | ru
Spanish | es
Turkish | tr

## Status codes
Code | Description
:-- | :--
0 | The user completed the session
1000 | The user cancelled the session
2000 | Unauthorised request (wrong or expired session token)
2001 | Session not found
2002 | Session expired
2003 | SDK launched without a session token
2004 | SDK launched without a session id
3000 | Yoti's services are down or unable to process the request
3001 | An error occurred during a network request
3002 | The user did not have a network connection
3003 | A network request timed out
4000 | The user did not grant permission to the camera
4001 | The user submitted a wrong document
5000 | The user's camera was not found and file upload is not allowed
5002 | No more local tries for the liveness flow
5003 | SDK is out-of-date, please update the SDK to the latest version
5004 | An unexpected internal error occurred
5005 | An unexpected document capture error occurred
5006 | An unexpected liveness capture error occurred
5008 | An unsupported configuration was used
6000 | The identity document dependency could not be found
6001 | The face scan dependency could not be found
6002 | The supplementary document dependency could not be found
6003 | The face capture dependency could not be found
7000 | The user did not have the required documents

## Support
For any questions or support please contact us [here](https://support.yoti.com). Once we have answered your question, we may contact you again to discuss Yoti products and services. If you'd prefer us not to do this, please let us know when you e-mail.

## Licence
See the licence [here](https://www.yoti.com/terms/identity-verification).
