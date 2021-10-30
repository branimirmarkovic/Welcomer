//
//  LogInContainerViewThemeSource.swift
//  Welcomer
//
//  Created by Branimir Markovic on 30.10.21..
//

import Foundation

public protocol LogInContainerViewThemeSource: AnyObject {
    func themeForBackgroundView() -> BackgroundThemeConfiguration
    func themeForLogInLabel() -> LabelThemeConfiguration
    func themeForTextFields() -> TextFieldThemeConfiguration
    func themeForQuestionLabel() -> QuestionLabelThemeConfiguration
    func themeForButton() -> ButtonThemeConfiguration
}
