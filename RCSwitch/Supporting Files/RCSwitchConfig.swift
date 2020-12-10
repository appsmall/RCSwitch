//
//  RCSwitchConfig.swift
//  RCSwitch
//
//  Created by Rahul Chopra on 03/12/20.
//  Copyright © 2020 Rahul Chopra . All rights reserved.
//

import Foundation
import UIKit


public struct RCSwitchConfig {
    struct GradientBack {
        var colors: [CGColor]
        var startPoint: CGPoint
        var endPoint: CGPoint
    }

    var text: String
    var textColor: UIColor
    var font: UIFont
    var backgroundColor: UIColor
    var backGradient: GradientBack?
    var backImage: UIImage?
    
    public init(text: String, textColor: UIColor, font: UIFont, backgroundColor: UIColor) {
        self.text = text
        self.textColor = textColor
        self.font = font
        self.backgroundColor = backgroundColor
    }
    
    public init(text: String, textColor: UIColor, font: UIFont, gradientColors: [CGColor], startPoint: CGPoint, endPoint: CGPoint) {
        self.init(text: text, textColor: textColor, font: font, backgroundColor: .white)
        self.backGradient = GradientBack(colors: gradientColors, startPoint: startPoint, endPoint: endPoint)
    }
    
    public init(text: String, textColor: UIColor, font: UIFont, image: UIImage?) {
        self.init(text: text, textColor: textColor, font: font, backgroundColor: .white)
        self.backImage = image
    }
    
    public static let defaultLeft = RCSwitchConfig(text: "Left",
                                                 textColor: .white,
                                                      font: .boldSystemFont(ofSize: 20),
                                           backgroundColor: UIColor.red)
    
    public static let defaultRight = RCSwitchConfig(text: "Right",
                                                  textColor: .white,
                                                       font: .boldSystemFont(ofSize: 20),
                                            backgroundColor: UIColor.blue)
}

public enum LabelSwitchState {
    case L
    case R
    
    mutating func flip() {
        switch self {
        case .L:
            self = .R
        case .R:
            self = .L
        }
    }
}



