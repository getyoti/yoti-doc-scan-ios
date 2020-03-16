# Yoti Doc Scan, iOS SDK

![Illustration](./Illustration.png)

Integrating with our SDK allows a user of your app to take a photo of their ID, as well as to scan their face, we then verify this instantly and prepare a response, which your system can then retrieve on your hosted site.

## Prerequisites
In order to integrate with our SDK, a working infrastructure is needed.
Please see [developers.yoti.com](https://developers.yoti.com/yoti-doc-scan/yoti-doc-scan-integration-introduction) for more details.

## Requirements
- iOS 11+
- Swift 5+

## Installation
To install the SDK, please use one of the following dependency managers:
- [Carthage](https://github.com/carthage/carthage): Find out more in our [Install with Carthage](https://) guide
- [CocoaPods](https://cocoapods.org): Find out more in our [Install with CocoaPods](https://) guide

## Integration

### 1. Launching the SDK
Perform the following actions to initialize and present the SDK.
```swift
// Create an instance of the `YotiSDKNavigationController`.
let navigationController = YotiSDKNavigationController()

// Set the data source used in the SDK to specify the session
// of which the verification process should apply to as well as
// its supported module types.
navigationController.sdkDataSource = self

// Set the delegate in order to specify the primary color used for
// the UI and to handle the result of the verification process.
navigationController.sdkDelegate = self

// Present the `YotiSDKNavigationController`.
present(navigationController, animated: true, completion: nil)
```

### 2. Specifying the Session and its Supported Module Types
Conform to `YotiSDKDataSource`.
```swift
func sessionID(for navigationController: YotiSDKNavigationController) -> String {
    "[Session ID]"
}

func sessionToken(for navigationController: YotiSDKNavigationController) -> String {
    "[Session Token]"
}

func supportedModuleTypes(for navigationController: YotiSDKNavigationController) -> [YotiSDKModule.Type] {
    [YotiSDKDocument.self, YotiSDKZoom.self]
}
```
Find out more about `supportedModuleTypes` [here](https://).

### 3. UI customizations and handling the verification result
Conform to `YotiSDKDelegate`.
```swifts
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

## Error Handling
Please refer to [this](https://) table for a description of error codes that may be returned to you as part of a failed verification.

## Support
If you have any other questions please do not hesitate to contact sdksupport@yoti.com.
Once we have answered your question we may contact you again to discuss Yoti products and services. If you'd prefer us not to do this, please let us know when you e-mail.

## Licence
Please find the licence for Yoti Doc Scan [here](https://www.yoti.com/wp-content/uploads/2019/08/Yoti-Doc-Scan-SDK-Terms.pdf).
