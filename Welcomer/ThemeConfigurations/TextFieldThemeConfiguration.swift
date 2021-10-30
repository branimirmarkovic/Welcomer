//
//  TextFieldThemeConfiguration.swift
//  Welcomer
//
//  Created by Branimir Markovic on 30.10.21..
//

import Foundation
import UIKit

public class TextFieldThemeConfiguration {

    public init(font: UIFont? = nil, fontColour: UIColor? = nil, backgroundColour: UIColor? = nil, cornerRadius: CGFloat? = nil) {
        self.font = font
        self.fontColour = fontColour
        self.backgroundColour = backgroundColour
        self.cornerRadius = cornerRadius
    }

    var font: UIFont?
    var fontColour: UIColor?
    var backgroundColour: UIColor?
    var cornerRadius: CGFloat?

    func theme(_ textField: UITextField) {
        if let fontColour = fontColour {
            textField.textColor = fontColour
        }

        if let font = font {
            textField.font = font
        }

        if let backGroundColor = backgroundColour {
            textField.backgroundColor = backGroundColor
        } else {
            textField.borderStyle = .roundedRect
        }
        textField.clipsToBounds = true
        textField.layer.cornerRadius = cornerRadius ?? 0
    }
}
