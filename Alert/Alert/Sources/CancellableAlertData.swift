//
//  CancellableAlertData.swift
//  Alert
//
//  Created by Александр on 14.02.2025.
//

import Foundation

public struct CancellableAlertData {
    let title: String
    let message: String
    let confirmActionTitle: String
    let cancelActionTitle: String
    let confirmAction: (() -> Void)?
    let cancelAction: (() -> Void)?
}
