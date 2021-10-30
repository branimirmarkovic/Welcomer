//
//  LabelThemeConfiguration.swift
//  Welcomer
//
//  Created by Branimir Markovic on 30.10.21..
//

import Foundation
import UIKit

public class LabelThemeConfiguration {

    public init(font: UIFont = UIFont.preferredFont(forTextStyle: .title1), fontColour: UIColor = .label) {
        self.font = font
        self.fontColour = fontColour
    }


    var font: UIFont
    var fontColour: UIColor

    func theme(_ label: UILabel) {
        label.font = self.font
        label.textColor = self.fontColour
    }
    
}
