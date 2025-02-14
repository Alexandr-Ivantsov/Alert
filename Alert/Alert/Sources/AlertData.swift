//
//  AlertData.swift
//  Alert
//
//  Created by Александр on 14.02.2025.
//

import Foundation

public struct AlertData {
    let title: String
    let message: String
    let actionTitle: String
    let actionHandler: (() -> Void)?
}
