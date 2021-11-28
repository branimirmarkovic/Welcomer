//
//  SignInContainerViewThemeSource.swift
//  Welcomer
//
//  Created by Branimir Markovic on 13.11.21..
//

import Foundation



public protocol SignInContainerViewThemeSource: AnyObject {
    func themeForBackgroundView() -> BackgroundThemeConfiguration
    func themeForImagePickerView() -> ProfileImagePickerThemeConfiguration
    func themeForLogInLabel() -> LabelThemeConfiguration
    func themeForTextFields() -> TextFieldThemeConfiguration
    func themeForQuestionLabel() -> QuestionLabelThemeConfiguration
    func themeForButton() -> ButtonThemeConfiguration
}

extension SignInContainerViewThemeSource {
    func themeForBackgroundView() -> BackgroundThemeConfiguration {
        BackgroundThemeConfiguration()
    }

    func themeForImagePickerView() -> ProfileImagePickerThemeConfiguration {
        ProfileImagePickerThemeConfiguration()
    }
    func themeForLogInLabel() -> LabelThemeConfiguration {
        LabelThemeConfiguration()
    }
    func themeForTextFields() -> TextFieldThemeConfiguration {
        TextFieldThemeConfiguration()
    }
    func themeForQuestionLabel() -> QuestionLabelThemeConfiguration {
        QuestionLabelThemeConfiguration()
    }
    func themeForButton() -> ButtonThemeConfiguration {
        ButtonThemeConfiguration()
    }
}
