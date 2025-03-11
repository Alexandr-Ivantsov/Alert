//
//  CancellableAlertData.swift
//  Alert
//
//  Created by Александр on 14.02.2025.
//

import Foundation

public struct CancellableAlertData: AlerDataProtocol {
    public let title: String
    public let message: String
    let confirmActionTitle: String
    let cancelActionTitle: String
    let confirmAction: (() -> Void)?
    let cancelAction: (() -> Void)?
    
    public init(
        title: String,
        message: String,
        confirmActionTitle: String,
        cancelActionTitle: String,
        confirmAction: (() -> Void)?,
        cancelAction: (() -> Void)?
    ) {
        self.title = title
        self.message = message
        self.confirmActionTitle = confirmActionTitle
        self.cancelActionTitle = cancelActionTitle
        self.confirmAction = confirmAction
        self.cancelAction = cancelAction
    }
}
