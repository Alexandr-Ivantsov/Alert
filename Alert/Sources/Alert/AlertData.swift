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
}
