//
//  LogInViewController.swift
//  Welcomer
//
//  Created by Branimir Markovic on 30.10.21..
//

import UIKit

 protocol LogInContainerViewDelegate : AnyObject {
    func questionButtonTapped()
    func logInTapped(password: String?, email: String?,validCredentials: Bool)
}

final class LogInContainerVC : UIViewController {

    private var validator = InputValidator()

    weak var delegate: LogInContainerViewDelegate?

    override func loadView() {
        view = LogInContainerView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureActions()
    }

    public func constraintToSuperView(_ superView: UIView) {
        self.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.view.centerXAnchor.constraint(equalTo: superView.centerXAnchor),
            self.view.centerYAnchor.constraint(equalTo: superView.centerYAnchor),
            self.view.widthAnchor.constraint(equalToConstant: 350),
            self.view.heightAnchor.constraint(equalToConstant: 380)
        ])
    }

    private func configureActions() {
        let view = view as! LogInContainerView
        view.logInButton.addTarget(self, action: #selector(logInButtonTapped), for: .touchUpInside)
        view.emailTextField.addTarget(self, action: #selector(emailTextFieldFinishedEditing), for: .editingDidEnd)
        view.passwordTextField.addTarget(self, action: #selector(passwordTextFieldFinishedEditing), for: .editingDidEnd)
        view.questionSingInButton.addTarget(self, action: #selector(questionButtonTapped), for: .touchUpInside)
    }

    @objc private func logInButtonTapped() {
        let view = view as! LogInContainerView
        let password = view.passwordTextField.text
        let email = view.emailTextField.text
        let validCredentials = validator.validateEmail(email) && validator.validatePassword(password)
        delegate?.logInTapped(password: password, email: email, validCredentials: validCredentials)
    }

    @objc private func emailTextFieldFinishedEditing(sender: UITextField) {
        let email = sender.text
        let isValid = validator.validateEmail(email)

        switch isValid {
        case true:
            ()
        case false:
            ()
        }

    }

    @objc private func passwordTextFieldFinishedEditing(sender: UITextField) {
        let password = sender.text
        let isValid = validator.validatePassword(password)

        switch isValid {
        case true:
            ()
        case false:
            ()
        }

    }

    @objc private func questionButtonTapped() {
        delegate?.questionButtonTapped()
    }

}
