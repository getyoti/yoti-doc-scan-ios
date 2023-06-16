import UIKit
import YotiSDKCommon
import YotiSDKCore
import YotiSDKFaceTec

final class ViewController: UIViewController {
    @IBOutlet private weak var button: UIButton!

    @IBAction private func didSelectButton() {
        let navigationController = YotiSDKNavigationController()
        navigationController.sdkDataSource = self
        navigationController.sdkDelegate = self
        present(navigationController, animated: true, completion: nil)
    }
}

// MARK: - YotiSDKDataSource
extension ViewController: YotiSDKDataSource {
    func sessionID(for navigationController: YotiSDKNavigationController) -> String {
        ""
    }

    func sessionToken(for navigationController: YotiSDKNavigationController) -> String {
        ""
    }

    func supportedModuleTypes(for navigationController: YotiSDKNavigationController) -> [YotiSDKModule.Type] {
        [YotiSDKFaceTecModule.self]
    }
}

// MARK: - YotiSDKDelegate
extension ViewController: YotiSDKDelegate {
    func navigationController(_ navigationController: YotiSDKNavigationController, didFinishWithResult result: YotiSDKResult) {
        dismiss(animated: true)
        switch result {
        case .success:
            break
        case .failure(let error):
            print(error)
        }
    }
}
