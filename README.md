# Yoti Doc Scan, iOS SDK

![Illustration](./Illustration.png)

Integrating with our SDK allows a user of your app to take a photo of their ID, as well as to scan their face, we then verify this instantly and prepare a response, which your system can then retrieve on your hosted site.

## Prerequisites
In order to integrate with our SDK, a working infrastructure is needed (see [developers.yoti.com](https://developers.yoti.com/yoti-doc-scan/yoti-doc-scan-integration-introduction) for more details).

## Requirements
- iOS 11.4+
- Swift 5.2+

## Installation
Make sure you've installed and are running the latest version of:
- [Git LFS](https://git-lfs.github.com)
- [CocoaPods](https://guides.cocoapods.org/using/getting-started.html) (Optional)
- [Carthage](https://github.com/Carthage/Carthage) (Optional)

### CocoaPods
Add the following to your [`Podfile`](https://guides.cocoapods.org/using/the-podfile.html):
```bash
platform :ios, '11.4'

target 'TargetName' do
  pod 'YotiSDKDocument'
  pod 'YotiSDKZoom'
end
```
**Note**: If you wish to support only capturing and verifying an identity document, then add only `YotiSDKDocument`. If you wish to support only performing a face scan, then add only `YotiSDKZoom`.

### Carthage
#### 1. Choose or configure necessary files
Please refer to the [Installation](Installation/Carthage) folder of this repository, and locate the [`Cartfile`](https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile), `Input.xcfilelist` and `Output.xcfilelist` that matches the combination of capabilities that you wish to support.

#### 2. Build dependencies
Run `carthage bootstrap` from the root of your project directory, in which its `Cartfile` should also be located.

#### 3. Copy frameworks
On your application targets' `Build Phases` tab:
- Click `+` icon and choose `New Run Script Phase`
- Create a script with a shell of your choice (e.g. `/bin/sh`)
- Add the following to the script area below the shell:
```bash
/usr/local/bin/carthage copy-frameworks
```
- Add the `Input.xcfilelist` to the `Input File Lists` section of the script
- Add the `Output.xcfilelist` to the `Output File Lists` section of the script

#### 4. Link with libraries and add resources (Optional)
If `YotiSDKDocument` is specified as part of your dependencies, then add the following libraries at `Build Phases` → `Link Binary With Libraries`:
- `AVFoundation.framework`
- `AudioToolbox.framework`
- `CoreMedia.framework`
- `libc++.tbd`
- `libiconv.tbd`
- `libz.tbd`

In addition, the `Microblink.bundle` should be added at `Build Phases` → `Copy Bundle Resources`

## Integration
### 1. Import frameworks
Import the frameworks needed for your implementation:
```swift
import YotiSDKCommon
import YotiSDKCore
import YotiSDKDocument  // Optional. Include to capture and verify an identity document.
import YotiSDKZoom      // Optional. Include to perform a face scan.
```

### 2. Launching the SDK
Initialize and present the `YotiSDKNavigationController`:
```swift
let navigationController = YotiSDKNavigationController()

// To specify the session and its supported module types.
navigationController.sdkDataSource = self

// To perform UI customizations and to handle the verification result.
navigationController.sdkDelegate = self

present(navigationController, animated: true, completion: nil)
```

### 3. Specifying the session and its supported module types
Conform to `YotiSDKDataSource`:
```swift
func sessionID(for navigationController: YotiSDKNavigationController) -> String {
    "[Session ID]"
}

func sessionToken(for navigationController: YotiSDKNavigationController) -> String {
    "[Session Token]"
}

func supportedModuleTypes(for navigationController: YotiSDKNavigationController) -> [YotiSDKModule.Type] {
    [YotiSDKDocument.self, YotiSDKZoom.self] // Return only the module types you wish to support.
}
```

### 4. UI customizations and handling the verification result
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

**Note**: To use our SDK, it's required to also add the [`NSCameraUsageDescription`](https://developer.apple.com/documentation/bundleresources/information_property_list/nscamerausagedescription) key to your `Info.plist`.

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
If you have any other questions please do not hesitate to contact sdksupport@yoti.com.
Once we have answered your question we may contact you again to discuss Yoti products and services. If you'd prefer us not to do this, please let us know when you e-mail.

## Licence
Please find the licence for the SDK [here](https://www.yoti.com/wp-content/uploads/2019/08/Yoti-Doc-Scan-SDK-Terms.pdf).
