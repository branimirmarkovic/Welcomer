//
//  SignInContainerView.swift
//  Welcomer
//
//  Created by Branimir Markovic on 13.11.21..
//

import UIKit


class SignInContainerView: UIView {


    var pickProfilePhotoImageViewController: ProfileImagePickerVC = {
        let vc = ProfileImagePickerVC()
        return vc
    }()

    var titleLabel : UILabel = {
       let label = UILabel()
        label.text = "Sign In"
        label.textAlignment = .center
        return label
    }()

    var fullNameTextField : UITextField = {
       let textField = UITextField()
        textField.placeholder = "Full Name"
       return textField
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

    var repeatPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Confirm Password"
        textField.isSecureTextEntry = true
        return textField
    }()

    var questionSingInButton: UIButton = {
       let button = UIButton()
        button.setTitle("Already have account? Login!", for: .normal)
        return button
    }()

    var signInButton: UIButton = {
       let button = UIButton()
        button.setTitle("Sign in", for: .normal)
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
        addSubview(pickProfilePhotoImageViewController.view)
        addSubview(titleLabel)
        addSubview(fullNameTextField)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(repeatPasswordTextField)
        addSubview(questionSingInButton)
        addSubview(signInButton)
    }

    private func setupLayout() {
        constrainProfilePhotoImageView()
        constraintTitleLabel()
        constraintFullNameTextField()
        constraintEmailTextField()
        constraintPasswordTextfield()
        constraintRepeatPasswordTextField()
        constraintQuestionSignUpButton()
        constrainSignUpButton()
    }

    private func constrainProfilePhotoImageView() {
        pickProfilePhotoImageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pickProfilePhotoImageViewController.view.topAnchor.constraint(equalTo: self.topAnchor),
            pickProfilePhotoImageViewController.view.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            pickProfilePhotoImageViewController.view.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            pickProfilePhotoImageViewController.view.heightAnchor.constraint(equalToConstant: 210)
        ])

    }

    private func constraintTitleLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: pickProfilePhotoImageViewController.view.bottomAnchor,constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 40),
            titleLabel.widthAnchor.constraint(equalToConstant: 270)

        ])

    }

    private func constraintFullNameTextField() {
        fullNameTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            fullNameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 40),
            fullNameTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            fullNameTextField.heightAnchor.constraint(equalToConstant: 40),
            fullNameTextField.widthAnchor.constraint(equalToConstant: 270)
        ])

    }

    private func constraintEmailTextField() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: fullNameTextField.bottomAnchor,constant: 20),
            emailTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            emailTextField.widthAnchor.constraint(equalToConstant: 270)
        ])

    }

    private func constraintPasswordTextfield() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 20),
            passwordTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            passwordTextField.widthAnchor.constraint(equalToConstant: 270)
        ])

    }

    private func constraintRepeatPasswordTextField() {
        repeatPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            repeatPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 20),
            repeatPasswordTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            repeatPasswordTextField.heightAnchor.constraint(equalToConstant: 40),
            repeatPasswordTextField.widthAnchor.constraint(equalToConstant: 270)
        ])

    }

    private func constraintQuestionSignUpButton() {
        questionSingInButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            questionSingInButton.topAnchor.constraint(equalTo: repeatPasswordTextField.bottomAnchor,constant: 20),
            questionSingInButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            questionSingInButton.heightAnchor.constraint(equalToConstant: 30),
            questionSingInButton.widthAnchor.constraint(equalToConstant: 270)
        ])

    }

    private func constrainSignUpButton() {
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: questionSingInButton.bottomAnchor,constant: 30),
            signInButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 40),
            signInButton.widthAnchor.constraint(equalToConstant: 170)
        ])
    }

}

// MARK: - Theme Methods
extension SignInContainerView {

     func themeView(from config: BackgroundThemeConfiguration) {
         config.theme(self)
    }

     func themeTitleLabel(from config: LabelThemeConfiguration) {
         config.theme(titleLabel)
    }

     func themeTextFields(from config: TextFieldThemeConfiguration) {
         config.theme(emailTextField)
         config.theme(passwordTextField)
         config.theme(repeatPasswordTextField)
    }

     func themeQuestionLabel(from config: QuestionLabelThemeConfiguration) {
         config.theme(questionSingInButton)
    }

     func themeButton(from config: ButtonThemeConfiguration) {
         config.theme(signInButton)
    }

    func themeImagePicker( from config: ProfileImagePickerThemeConfiguration) {
        config.theme(pickProfilePhotoImageViewController.view)
    }

}
