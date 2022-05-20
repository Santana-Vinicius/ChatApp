//
//  AppColors.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 06/05/22.
//

import Foundation
import SwiftUI

/// This enum is used to define the colors avoiding magic strings
public enum AppColors {
    case blueFont
    case grayFont
    
    var color: Color {
        switch self {
        case .blueFont:
            return Color.init(red: 23/255, green: 125/255, blue: 250/255)
        case .grayFont:
            return Color.init(red: 159/255, green: 154/255, blue: 154/255)
        }
    }
}
