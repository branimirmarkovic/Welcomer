//
//  LogInViewController.swift
//  Welcomer
//
//  Created by Branimir Markovic on 30.10.21..
//

import UIKit





final public class LogInContainerVC : UIViewController {

    private var validator = InputValidator()

    weak  var delegate: LogInContainerViewDelegate?
    weak  var themeSource: LogInContainerViewThemeSource?

    public override func loadView() {
        view = LogInContainerView()
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        theme()
        configureActions()
    }

    public func setManager(_ manager: UIViewController & LogInContainerViewThemeSource & LogInContainerViewDelegate) {
        delegate = manager
        themeSource = manager
        manager.view.addSubview(self.view)
        constraintToSuperView(manager.view)
    }

    private func constraintToSuperView(_ superView: UIView) {
        self.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.view.centerXAnchor.constraint(equalTo: superView.centerXAnchor),
            self.view.centerYAnchor.constraint(equalTo: superView.centerYAnchor),
            self.view.widthAnchor.constraint(equalToConstant: 350),
            self.view.heightAnchor.constraint(equalToConstant: 380)
        ])
    }

}

extension LogInContainerVC {

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

    // MARK: - Theme Methods
    private func theme() {
        themeBackgroundView()
        themeTitleLabel()
        themeTextFields()
        themeQuestionLabel()
        themeButton()
    }

    private func themeBackgroundView() {
        guard let configuration = themeSource?.themeForBackgroundView(),
        let view = view as? LogInContainerView else {return}

        view.themeView(from: configuration)
    }

    private func themeTitleLabel() {
        guard let configuration = themeSource?.themeForLogInLabel(),
        let view = view as? LogInContainerView else {return}

        view.themeTitleLabel(from: configuration)
    }

    private func themeTextFields() {
        guard let configuration = themeSource?.themeForTextFields(),
        let view = view as? LogInContainerView else {return}

        view.themeTextFields(from: configuration)
    }

    private func themeQuestionLabel() {
        guard let configuration = themeSource?.themeForQuestionLabel(),
              let view = view as? LogInContainerView else {return}

        view.themeQuestionLabel(from: configuration)
    }

    private func themeButton() {
        guard let configuration = themeSource?.themeForButton(),
              let view = view as? LogInContainerView else {return}

        view.themeButton(from: configuration)

    }

}
