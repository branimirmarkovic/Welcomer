//
//  SignInViewController.swift
//  Demo app
//
//  Created by Branimir Markovic on 28.11.21..
//

import UIKit
import Welcomer


class SignInViewController: UIViewController {

    let signInVC = SignInContainerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        signInVC.setManager(self)
    }
}

extension SignInViewController: SignInContainerViewThemeSource, SignInContainerViewDelegate {
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


    func questionButtonTapped() {
        self.dismiss(animated: true, completion: nil)
    }

    func signInTapped(password: String?, email: String?, fullName: String?, image: UIImage?, validCredentials: Bool) {


    }


}
