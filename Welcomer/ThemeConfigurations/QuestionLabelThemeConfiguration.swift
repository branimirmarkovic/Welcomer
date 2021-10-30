//
//  QuestionLabelThemeConfiguration.swift
//  Welcomer
//
//  Created by Branimir Markovic on 30.10.21..
//

import Foundation
import UIKit

public class QuestionLabelThemeConfiguration {

    public init(font: UIFont = UIFont.preferredFont(forTextStyle: .body), fontColour: UIColor = .label) {
        self.font = font
        self.fontColour = fontColour
    }


    var font: UIFont = UIFont.preferredFont(forTextStyle: .body)
    var fontColour: UIColor = .label

    func theme(_ questionLabel: UIButton) {
        questionLabel.setTitleColor(fontColour, for: .normal)
        questionLabel.titleLabel?.font = font
    }
}
