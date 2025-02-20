//
//  UIViewController + extension.swift
//  Alert
//
//  Created by Александр on 14.02.2025.
//

import UIKit

public extension UIViewController {
    func showAlert(with data: AlerDataProtocol) {
        let alertController = UIAlertController(title: data.title, message: data.message, preferredStyle: .alert)
        if let data = data as? AlertData {
            let action = UIAlertAction(title: data.actionTitle, style: .default) { _ in
                data.actionHandler?()
            }
            alertController.addAction(action)
        } else if let data = data as? CancellableAlertData {
            let cancelAction = UIAlertAction(title: data.cancelActionTitle, style: .cancel) { _ in
                data.cancelAction?()
            }
            let confirmAction = UIAlertAction(title: data.confirmActionTitle, style: .default) { _ in
                data.confirmAction?()
            }
            alertController.addAction(cancelAction)
            alertController.addAction(confirmAction)
        }
        present(alertController, animated: true)
    }
}
