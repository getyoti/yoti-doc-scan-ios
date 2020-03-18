//
//  Copyright © 2020 Yoti Ltd. All rights reserved.
//

import UIKit
import YotiSDKCommon
import YotiSDKCore
import YotiSDKDocument
import YotiSDKZoom

final class ViewController: UIViewController {
    @IBOutlet private weak var yotiSDKButton: UIButton!

    @IBAction private func didSelectYotiSDKButton() {
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
    }
}

// MARK: - YotiSDKDataSource
extension ViewController: YotiSDKDataSource {
    func sessionID(for navigationController: YotiSDKNavigationController) -> String {
        "[Session ID]"
    }

    func sessionToken(for navigationController: YotiSDKNavigationController) -> String {
        "[Session Token]"
    }

    func supportedModuleTypes(for navigationController: YotiSDKNavigationController) -> [YotiSDKModule.Type] {
        [YotiSDKDocument.self, YotiSDKZoom.self]
    }
}

// MARK: - YotiSDKDelegate
extension ViewController: YotiSDKDelegate {
    // Optional. Uncomment this function to customize the primary color used in the SDK.
    // func primaryColor(for navigationController: YotiSDKNavigationController) -> UIColor {
    //    return .blue
    // }

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
}
