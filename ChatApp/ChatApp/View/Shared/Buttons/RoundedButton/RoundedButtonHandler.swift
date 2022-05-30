//
//  RoundedButtonStrategy.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 29/05/22.
//

import Foundation

protocol HandleRoundedButtonInteraction {
    func action()
}

class RoundedButtonHandler: HandleButtonInteraction {
    var actionHandler: HandleRoundedButtonInteraction
    
    init(actionHandler: HandleRoundedButtonInteraction) {
        self.actionHandler = actionHandler
    }
    
    func handleAction() {
        actionHandler.action()
    }
}
