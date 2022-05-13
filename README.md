# Yoti Doc Scan, iOS SDK

![Illustration](./Illustration.png)

Integrating with our SDK allows a user of your app to take a photo of their document, as well as to scan or capture their face, we then verify this instantly and prepare a response, which your system can then retrieve on your hosted site.

## Prerequisites
In order to integrate with our SDK, a working infrastructure is needed (see [developers.yoti.com](https://developers.yoti.com/yoti-doc-scan/yoti-doc-scan-integration-introduction) for more details).

## Requirements
- iOS 13.0+
- Swift 5.3+

## Installation
Make sure you've installed and are running the latest version of:
- [CocoaPods](https://guides.cocoapods.org/using/getting-started.html) (Optional)
- [Carthage](https://github.com/Carthage/Carthage) (Optional)

### CocoaPods
Add the following to your [`Podfile`](https://guides.cocoapods.org/using/the-podfile.html) and run `pod install` from its directory:
```bash
platform :ios, '13.0'

target 'TargetName' do
  use_frameworks!
  pod 'YotiSDKDocument'     // Optional
  pod 'YotiSDKFaceTec'      // Optional
  pod 'YotiSDKFaceCapture'  // Optional
end
```

### Carthage
#### 1. Configure your [`Cartfile`](https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile)
```bash
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiFoundation.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiNetwork.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKNetwork.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiCommon.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKCommon.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKDesign.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKCore.json"
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiDocumentCapture.json"             // Include only if `YotiSDKDocument` is added
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKDocument.json"                 // Optional
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKFace.json"                     // Include only if `YotiSDKFaceTec` or `YotiSDKFaceCapture` is added
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKFaceTec.json"                  // Optional
binary "https://raw.githubusercontent.com/getyoti/yoti-doc-scan-ios/master/Specs/Carthage/YotiSDKFaceCapture.json"              // Optional
binary "https://raw.githubusercontent.com/getyoti/yoti-face-capture-ios/master/Specs/Carthage/YotiFaceCapture.json" == 4.0.0    // Include only if `YotiSDKFaceCapture` is added
github "BlinkID/blinkid-ios" "v5.14.0"                                                                                          // Include only if `YotiSDKDocument` is added
github "apple/swift-protobuf" "1.19.0"                                                                                          // Include only if `YotiSDKDocument` is added
```

#### 2. Build dependencies
Run `carthage bootstrap` from the root of your project directory, in which the `Cartfile` should also be located.

#### 3. Embed frameworks
...

#### 4. Link with libraries and add resources (Optional)
If `YotiSDKDocument` is specified as part of your dependencies, then add the following libraries at `Build Phases` → `Link Binary With Libraries`:
- `AudioToolbox.framework`
- `AVFoundation.framework`
- `CoreMedia.framework`
- `CoreNFC.framework`
- `libc++.tbd`
- `libiconv.tbd`
- `libz.tbd`

## Integration
### 1. Import frameworks
Import the frameworks needed for your implementation:
```swift
import YotiSDKCommon
import YotiSDKCore
import YotiSDKDocument      // Optional
import YotiSDKFaceTec       // Optional
import YotiSDKFaceCapture   // Optional
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
    "[Session ID]"
}

func sessionToken(for navigationController: YotiSDKNavigationController) -> String {
    "[Session token]"
}

func supportedModuleTypes(for navigationController: YotiSDKNavigationController) -> [YotiSDKModule.Type] {
    [
        YotiSDKDocumentModule.self,     // Optional
        YotiSDKFaceTecModule.self,      // Optional
        YotiSDKFaceCaptureModule.self   // Optional
    ]
}
```

### 4. Customize the UI and and handle the verification result
Conform to `YotiSDKDelegate`:
```swift
// Optional.
func primaryColor(for navigationController: YotiSDKNavigationController) -> UIColor {
    return .blue
}

func navigationController(_ navigationController: YotiSDKNavigationController, didFinishWithResult result: YotiSDKResult) {
    // Dismiss the SDK.
    dismiss(animated: true)

    // Handle the result from the SDK.
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

If `YotiSDKDocument` is specified as part of your dependencies, then you should also:
- Add [`NFCReaderUsageDescription`](https://developer.apple.com/documentation/bundleresources/information_property_list/nfcreaderusagedescription) to your `Info.plist`
- Add [`com.apple.developer.nfc.readersession.iso7816.select-identifiers`](https://developer.apple.com/documentation/bundleresources/information_property_list/select-identifiers) to your `Info.plist` and include [`A0000002471001`](https://www.icao.int/publications/Documents/9303_p10_cons_en.pdf) as an application identifier for your app to support
- Turn on [`Near Field Communication Tag Reading`](https://developer.apple.com/documentation/corenfc/building_an_nfc_tag-reader_app) under the Signing & Capabilities tab for your project’s target

## Error Handling
Please refer to the following table of error codes that may be returned as part of a failed verification.

Code | Description | Retry possible (same session)
:-- | :-- | :--
1000 | No error occurred. The user cancelled the session | Yes
2000 | Unauthorised request (wrong or expired session token) | Yes
2001 | Session not found | Yes
2002 | Session expired | Yes
2003 | SDK launched without session Token | Yes
2004 | SDK launched without session ID | Yes
3000 | Yoti's services are down or unable to process the request | Yes
3001 | An error occurred during a network request | Yes
3002 | User has no network | Yes
4000 | The user did not grant permission to the camera | Yes
5000 | The user's camera was not found and file upload is not allowed | No
5002 | No more local tries for the liveness flow | Yes
5003 | SDK is out-of-date, please update the SDK to the latest version | No
5004 | An unexpected internal error occurred | No
5005 | An unexpected document capture error occurred | No
5006 | An unexpected liveness capture error occurred | No

## Support
If you have any other questions please do not hesitate to contact clientsupport@yoti.com. Once we have answered your question we may contact you again to discuss Yoti products and services. If you'd prefer us not to do this, please let us know when you e-mail.

## Licence
Please find the licence for the SDK [here](https://www.yoti.com/terms/identity-verification).
