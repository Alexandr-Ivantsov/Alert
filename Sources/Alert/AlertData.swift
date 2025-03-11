//
//  AlertData.swift
//  Alert
//
//  Created by Александр on 14.02.2025.
//

import Foundation

public struct AlertData: AlerDataProtocol {
    public let title: String
    public let message: String
    let actionTitle: String
    let actionHandler: (() -> Void)?
    
    public init(
        title: String,
        message: String,
        actionTitle: String,
        actionHandler: (() -> Void)?
    ) {
        self.title = title
        self.message = message
        self.actionTitle = actionTitle
        self.actionHandler = actionHandler
    }
}
