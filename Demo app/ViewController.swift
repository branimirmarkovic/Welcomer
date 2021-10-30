//
//  ViewController.swift
//  Demo app
//
//  Created by Branimir Markovic on 30.10.21..
//

import UIKit
import Welcomer

class ViewController: UIViewController {

    let logInVC = LogInContainerVC()


    override func viewDidLoad() {
        super.viewDidLoad()
        logInVC.setManager(self)

    }




}

extension ViewController: LogInContainerViewDelegate {
    func questionButtonTapped() {

    }

    func logInTapped(password: String?, email: String?, validCredentials: Bool) {

    }


}

extension ViewController: LogInContainerViewThemeSource {

    func themeForBackgroundView() -> BackgroundThemeConfiguration {
        BackgroundThemeConfiguration()
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



