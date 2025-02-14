//
//  UIViewController + extension.swift
//  Alert
//
//  Created by Александр on 14.02.2025.
//

import UIKit

public enum AlertStyle {
    case oneAction(AlertData)
    case twoAction(CancellableAlertData)
}

public extension UIViewController {
    func showAlert(with style: AlertStyle) {
        switch style {
        case .oneAction(let data):
            let alertController = UIAlertController(title: data.title, message: data.message, preferredStyle: .alert)
            let action = UIAlertAction(title: data.actionTitle, style: .default) { _ in
                data.actionHandler?()
            }
            alertController.addAction(action)
            present(alertController, animated: true)
        case .twoAction(let data):
            let alertController = UIAlertController(title: data.title, message: data.message, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: data.cancelActionTitle, style: .cancel) { _ in
                data.cancelAction?()
            }
            let confirmAction = UIAlertAction(title: data.confirmActionTitle, style: .default) { _ in
                data.confirmAction?()
            }
            alertController.addAction(cancelAction)
            alertController.addAction(confirmAction)
            present(alertController, animated: true)
        }
    }
}
