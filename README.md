# Yoti IDV, iOS SDK

![Illustration](./Illustration.png)

Our SDK allows a user of your app to take a photo of their document, as well as to scan or capture their face, we then verify this instantly and prepare a response, which your system can then retrieve on your hosted site.

## Prerequisites
To integrate with our SDK, a working infrastructure is needed (see [developers.yoti.com](https://developers.yoti.com/identity-verification/overview) for more details).

## Requirements
- iOS 13.0+
- Swift 5.3+

## Integration
### CocoaPods
Add the following to your [`Podfile`](https://guides.cocoapods.org/using/the-podfile.html) and run `pod install` from its directory:
```bash
platform :ios, '13.0'

target 'TargetName' do
  use_frameworks!
  pod 'YotiSDKIdentityDocument'         // Optional
  pod 'YotiSDKSupplementaryDocument'    // Optional
  pod 'YotiSDKFaceTec'                  // Optional
  pod 'YotiSDKFaceCapture'              // Optional
end
```

### Carthage
#### 1. Configure and build your dependencies
Add the following to your [`Cartfile`](https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile) and run `carthage bootstrap --platform iOS --use-xcframeworks` from its directory:
```bash
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiNetwork.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiDocumentCapture.json"             // Include only if `YotiSDKIdentityDocument` is added
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiNFC.json"                         // Include only if `YotiSDKIdentityDocument` is added
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKNetwork.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKCommon.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKDesign.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKCore.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKDocument.json"                 // Include only if `YotiSDKIdentityDocument` or `YotiSDKSupplementaryDocument` is added
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKIdentityDocument.json"         // Optional
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKSupplementaryDocument.json"    // Optional
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKFace.json"                     // Include only if `YotiSDKFaceTec` or `YotiSDKFaceCapture` is added
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKFaceTec.json"                  // Optional
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKFaceCapture.json"              // Optional
binary "https://raw.githubusercontent.com/getyoti/yoti-face-capture-ios/master/Specs/Carthage/YotiFaceCapture.json" == 5.0.0    // Include only if `YotiSDKFaceCapture` is added
binary "https://raw.githubusercontent.com/BlinkID/blinkid-ios/master/blinkid-ios.json" == 5.18.0                                // Include only if `YotiSDKIdentityDocument` is added
```

#### 2. Embed frameworks
Locate your fetched dependencies in `$(PROJECT_DIR)/Carthage/Build/**`, and add them to `General` → `Frameworks, Libraries and Embedded Content`. Ensure to `Embed & Sign` all of these dependencies, and to point your target's `FRAMEWORK_SEARCH_PATHS` to their directory.

#### 3. Link binary with libraries (Optional)
If `YotiSDKIdentityDocument` is specified as part of your dependencies, then add the following libraries at `Build Phases` → `Link Binary With Libraries`:
- `AVFoundation.framework`
- `CoreMedia.framework`
- `CoreNFC.framework`
- `libc++.tbd`
- `libiconv.tbd`
- `libz.tbd`

### Swift Package Manager
Add the following line to your `Package.swift` file:
```swift
.package(url: "https://github.com/getyoti/yoti-doc-scan-ios.git", from: "1.0.0")
```
...or add our package in Xcode via `File -> Swift Packages -> Add Package Dependency...` using the URL of this repository.

If you are including `YotiSDKIdentityDocument` in your target, then you should also link your binary to the required libraries as outlined [here](#3-link-binary-with-libraries-optional).

## Usage
### 1. Import frameworks
Import the frameworks needed for your implementation:
```swift
import YotiSDKCommon
import YotiSDKCore
import YotiSDKIdentityDocument          // Optional
import YotiSDKSupplementaryDocument     // Optional
import YotiSDKFaceTec                   // Optional
import YotiSDKFaceCapture               // Optional
```

### 2. Launch the SDK
Initialize and present the `YotiSDKNavigationController`:
```swift
let navigationController = YotiSDKNavigationController()
navigationController.sdkDataSource = self
navigationController.sdkDelegate = self
present(navigationController, animated: true, completion: nil)
```

### 3. Specify the session and its supported module types
Conform to `YotiSDKDataSource`:
```swift
func sessionID(for navigationController: YotiSDKNavigationController) -> String {
    ""
}

func sessionToken(for navigationController: YotiSDKNavigationController) -> String {
    ""
}

func supportedModuleTypes(for navigationController: YotiSDKNavigationController) -> [YotiSDKModule.Type] {
    [
        YotiSDKIdentityDocumentModule.self,         // Optional
        YotiSDKSupplementaryDocumentModule.self,    // Optional
        YotiSDKFaceTecModule.self,                  // Optional
        YotiSDKFaceCaptureModule.self               // Optional
    ]
}
```

### 4. Handle the result
Conform to `YotiSDKDelegate`:
```swift
func navigationController(_ navigationController: YotiSDKNavigationController, didFinishWithResult result: YotiSDKResult) {
    dismiss(animated: true)
    switch result {
    case .success:
        break
    case .failure(let error):
        print(error)
    }
}
```

### 5. Modify the properties and capabilities of your project's target
Add [`NSCameraUsageDescription`](https://developer.apple.com/documentation/bundleresources/information_property_list/nscamerausagedescription) to your `Info.plist`.

If `YotiSDKIdentityDocument` is included in your target, then you should also:
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

## Error codes
Code | Description
:-- | :--
1000 | No error occurred. The user cancelled the session
2000 | Unauthorised request (wrong or expired session token)
2001 | Session not found
2002 | Session expired
2003 | SDK launched without session Token
2004 | SDK launched without session ID
3000 | Yoti's services are down or unable to process the request
3001 | An error occurred during a network request
3002 | The user did not have a network connection
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
