//
//  BackgroundThemeConfiguration.swift
//  Welcomer
//
//  Created by Branimir Markovic on 30.10.21..
//

import Foundation
import UIKit

public class BackgroundThemeConfiguration {


    var color: UIColor
    var cornerRadius: CGFloat 

    public init(color: UIColor = .systemGray5, cornerRadius: CGFloat = 10) {
        self.color = color
        self.cornerRadius = cornerRadius
    }


    func theme(_ view: UIView) {
        view.clipsToBounds = true
        view.layer.cornerRadius = cornerRadius
        view.backgroundColor = color
    }
}
