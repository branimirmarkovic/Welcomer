//
//  LogInViewController.swift
//  Demo app
//
//  Created by Branimir Markovic on 30.10.21..
//

import UIKit
import Welcomer

class LogInViewController: UIViewController {

    let logInVC = LogInContainerVC()

    override func viewDidLoad() {
        super.viewDidLoad()
        logInVC.setManager(self)
    }

}

extension LogInViewController: LogInContainerViewDelegate {
    func questionButtonTapped() {
let signInVC = SignInViewController()
        self.present(signInVC, animated: true, completion: nil)
    }

    func logInTapped(password: String?, email: String?, validCredentials: Bool) {

    }

}

extension LogInViewController: LogInContainerViewThemeSource {

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





