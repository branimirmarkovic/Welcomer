//
//  ProfileImagePickerThemeConfiguration.swift
//  Welcomer
//
//  Created by Branimir Markovic on 13.11.21..
//

import Foundation
import UIKit

public class ProfileImagePickerThemeConfiguration {

    var primaryColor: UIColor
    var secondaryColor: UIColor
    var cornerRadius: CGFloat
    
    public init(primaryColor: UIColor = .systemGray, secondaryColor: UIColor = .systemGray2, cornerRadius: CGFloat = 0) {
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.cornerRadius = cornerRadius
    }

    func theme( _ imagePicker: ProfileImagePickerView) {

        imagePicker.backgroundView.backgroundColor = secondaryColor
        imagePicker.imageView.backgroundColor = primaryColor

        imagePicker.backgroundView.layer.cornerRadius = cornerRadius
        imagePicker.imageView.layer.cornerRadius = cornerRadius
    }



    
}
