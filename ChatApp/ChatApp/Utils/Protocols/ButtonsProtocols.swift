//
//  ButtonsProtocols.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 19/05/22.
//

import Foundation

/// Protocol used to handle button interactions
protocol HandleButtonInteraction {
    /// Declare here what the button should
    ///  do when tapped
    func handleAction()
}

/// Every new child of ButtonType must to conform to this Protocol
protocol ButtonTypeProtocol {
    var identifier: ButtonTypeIdentifier { get }
}
