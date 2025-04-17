import UIKit
import YotiSDKCore
import YotiSDKIdentityDocument
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
    func configuration() -> YotiSDKConfiguration {
        .init(
            sessionID: "",
            sessionToken: "",
            singleFlow: false,
            moduleTypes: [YotiSDKIdentityDocumentModule.self, YotiSDKFaceTecModule.self]
        )
    }
}

// MARK: - YotiSDKDelegate
extension ViewController: YotiSDKDelegate {
    func didFinish(statusCode: Int) {
        dismiss(animated: true)
        print(statusCode)
    }
}
