//
//  ButtonThemeConfiguration.swift
//  Welcomer
//
//  Created by Branimir Markovic on 30.10.21..
//

import Foundation
import UIKit

public class ButtonThemeConfiguration {

    public init(font: UIFont = UIFont.preferredFont(forTextStyle: .title3), fontColour: UIColor = .white, backGroundColour: UIColor = .systemGray, cornerRadius: CGFloat = 0) {
        self.font = font
        self.fontColour = fontColour
        self.backGroundColour = backGroundColour
        self.cornerRadius = cornerRadius
    }

    var font: UIFont = UIFont.preferredFont(forTextStyle: .title3)
    var fontColour: UIColor = .white
    var backGroundColour: UIColor = .systemGray
    var cornerRadius: CGFloat = 0

    func theme(_ button: UIButton) {
        button.setTitleColor(fontColour, for: .normal)
        button.titleLabel?.font = font
        button.backgroundColor = backGroundColour
        button.layer.cornerRadius = cornerRadius
        button.clipsToBounds = true
    }
}
