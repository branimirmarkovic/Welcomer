//
//  LogInView.swift
//  Welcomer
//
//  Created by Branimir Markovic on 30.10.21..
//


import UIKit

class LogInContainerView: UIView {

    var titleLabel : UILabel = {
       let label = UILabel()
        label.text = "Log In"
        return label
    }()

    var emailTextField : UITextField = {
       let textField = UITextField()
        textField.placeholder = "Email Adress"
       return textField
    }()

    var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        return textField
    }()

    var questionSingInButton: UIButton = {
       let button = UIButton()
        button.setTitle("U don't have account? Signup!", for: .normal)
        return button
    }()

    var logInButton: UIButton = {
       let button = UIButton()
        button.setTitle("Login", for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupLayout()
    }

    required init() {
        super.init(frame: .zero)
        addSubviews()
        setupLayout()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }

    private func addSubviews() {
        addSubview(titleLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(questionSingInButton)
        addSubview(logInButton)
    }

    private func setupLayout() {
        constrainTitleLabel()
        constraintEmailTextField()
        constraintPasswordTextField()
        constraintQuestionButton()
        constraintLogInButton()

    }

    private func constrainTitleLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 30),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 40),
            titleLabel.widthAnchor.constraint(equalToConstant: 270 )
        ])
    }

    private func constraintEmailTextField() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor,constant: 50),
            emailTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            emailTextField.widthAnchor.constraint(equalToConstant: 270)
        ])
    }

    private func constraintPasswordTextField() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor,constant: 25),
            passwordTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            passwordTextField.widthAnchor.constraint(equalToConstant: 270)
        ])
    }

    private func constraintQuestionButton() {
        questionSingInButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            questionSingInButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor,constant: 20),
            questionSingInButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        questionSingInButton.heightAnchor.constraint(equalToConstant: 20),
            questionSingInButton.widthAnchor.constraint(equalToConstant: 270)
        ])
    }

    private func constraintLogInButton() {
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logInButton.topAnchor.constraint(equalTo: self.questionSingInButton.bottomAnchor,constant: 35),
            logInButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logInButton.heightAnchor.constraint(equalToConstant: 40),
            logInButton.widthAnchor.constraint(equalToConstant: 170)
        ])
    }
}

