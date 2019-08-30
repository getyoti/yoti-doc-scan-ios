//
//  Yoti Doc Scan iOS SDK, Sample.
//  Created by Anders Klausen.
//
//  Copyright (c) Yoti Ltd 2019.
//  All rights reserved.
//  See LICENSE.md for license.
//

import UIKit
import YotiDocScan

class ViewController: UIViewController {
    @IBOutlet private weak var yotiDocScanButton: UIButton!

    // Handle tap on the custom Yoti Doc Scan button.
    @IBAction private func didSelectYotiDocScanButton() {
        // Create an instance of the Yoti Doc Scan navigation controller.
        let navigationController = YotiDocScanNavigationController()

        // Set the data source used in the SDK to specify the session
        // of which the verification process should apply to.
        navigationController.yotiDocScanDataSource = self

        // Set the delegate in order to specify the user interface style used in
        // the SDK and to handle the result of the verification process.
        navigationController.yotiDocScanDelegate = self

        // Present the Yoti Doc Scan navigation controller.
        present(navigationController, animated: true, completion: nil)
    }
}

// MARK: - YotiDocScanDataSource
extension ViewController: YotiDocScanDataSource {
    func sessionID(for navigationController: YotiDocScanNavigationController) -> String {
        return "Please insert the [Session ID] here"
    }

    func clientSessionToken(for navigationController: YotiDocScanNavigationController) -> String {
        return "Please insert the [Client Session Token] here"
    }
}

// MARK: - YotiDocScanDelegate
extension ViewController: YotiDocScanDelegate {
    // Optional. Uncomment this function to customize the primary color used
    // for the user interface in the SDK.
    // func primaryColor(for navigationController: YotiDocScanNavigationController) -> UIColor {
    //    return .blue
    // }

    func yotiDocScan(_ navigationController: YotiDocScanNavigationController,
                     didFinishWithResult result: YotiDocScanResult) {

        // Dismiss the SDK.
        dismiss(animated: true)

        // Handle the result from the SDK.
        switch result {
        case .success:
            return
        case .failure(let error):
            print(error)
        }
    }
}
