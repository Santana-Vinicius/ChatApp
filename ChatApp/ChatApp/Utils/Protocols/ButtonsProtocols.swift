//
//  ButtonsProtocols.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 19/05/22.
//

import Foundation

/// Protocol used to handle button interactions
protocol HandleButtonInteraction {
    func handleAction(type: ButtonTypeProtocol)
}

/// Every new child of ButtonType must to conform to this Protocol
protocol ButtonTypeProtocol {
    var identifier: ButtonTypeIdentifier { get }
}
