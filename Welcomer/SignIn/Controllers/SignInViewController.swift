//
//  SignInViewController.swift
//  Welcomer
//
//  Created by Branimir Markovic on 13.11.21..
//

import UIKit


class SignInContainerViewController: UIViewController {
    private var validator = InputValidator()

    weak  var delegate: SignInContainerViewDelegate?
    weak  var themeSource: SignInContainerViewThemeSource?

    var savedPassword: String?

    public override func loadView() {
        view = SignInContainerView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    public func setManager(_ manager: UIViewController & SignInContainerViewThemeSource & SignInContainerViewDelegate) {
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
            self.view.heightAnchor.constraint(equalToConstant: 700)
        ])
    }

    

}

extension SignInContainerViewController {

    private func configureActions() {
        guard let view = view as? SignInContainerView else {return}
        view.fullNameTextField.addTarget(self, action: #selector(fullNameTextFieldDidiFinishedEditing(sender:)), for: .editingDidEnd)
        view.emailTextField.addTarget(self, action: #selector(emailTextFieldDidFinishedEditing(sender:)), for: .editingDidEnd)
        view.passwordTextField.addTarget(self, action: #selector(passwordTextFieldDidFinishedEditing(sender:)), for: .editingDidEnd)
        view.repeatPasswordTextField.addTarget(self, action: #selector(repeatPasswordTextFieldDidiFinishedEditing(sender:)), for: .editingDidEnd)
        view.questionSingInButton.addTarget(self, action: #selector(questionButtonTapped), for: .touchUpInside)
        view.signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
    }


    @objc func fullNameTextFieldDidiFinishedEditing(sender: UITextField) {
        let fullName = sender.text
        let isValid = validator.validateFullName(fullName)

        switch isValid {
        case true:
            ()
        case false:
            ()
        }
        
    }

    @objc func emailTextFieldDidFinishedEditing(sender: UITextField) {
        let email = sender.text
        let isValid = validator.validateEmail(email)

        switch isValid {
        case true:
            ()
        case false:
            ()
        }

    }

    @objc func passwordTextFieldDidFinishedEditing(sender: UITextField) {

        let password = sender.text
        let isValid = validator.validatePassword(password)

        switch isValid {
        case true:
            savedPassword = password
        case false:
            ()
        }

    }

    @objc func repeatPasswordTextFieldDidiFinishedEditing(sender: UITextField) {
        let password = sender.text
        let isValid = password == savedPassword && savedPassword != nil

        switch isValid {
        case true:
            ()
        case false:
            ()
        }
        

    }

    @objc func questionButtonTapped () {
        delegate?.questionButtonTapped()

    }

    @objc func signInButtonTapped() {
        // TODO: handle password double check

    }

    

}
