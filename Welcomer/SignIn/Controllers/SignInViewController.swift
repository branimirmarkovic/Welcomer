//
//  SignInViewController.swift
//  Welcomer
//
//  Created by Branimir Markovic on 13.11.21..
//

import UIKit
import PhotosUI


final public class SignInContainerViewController: UIViewController {

    weak  var delegate: SignInContainerViewDelegate?
    weak  var themeSource: SignInContainerViewThemeSource?

    var credentials: Credentials = Credentials()

    public override func loadView() {
        view = SignInContainerView()
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        theme()
        configureActions()
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
        view.pickProfilePhotoImageViewController.delegate = self
    }

     func photoPicked(photo: UIImage?) {
         credentials.photo = photo
    }


    @objc func fullNameTextFieldDidiFinishedEditing(sender: UITextField) {
        credentials.fullName = sender.text
        switch credentials.isValidFullName() {
        case true:
            ()
        case false:
            ()
        }
        
    }

    @objc func emailTextFieldDidFinishedEditing(sender: UITextField) {
        credentials.email = sender.text

        switch credentials.isValidEmail() {
        case true:
            ()
        case false:
            ()
        }

    }

    @objc func passwordTextFieldDidFinishedEditing(sender: UITextField) {

        credentials.password = sender.text

        switch credentials.isValidPassword() {
        case true:
            ()
        case false:
            ()
        }

    }

    @objc func repeatPasswordTextFieldDidiFinishedEditing(sender: UITextField) {
        let repeatedPassword = sender.text
        let isValid = credentials.isValidPassword() && credentials.password == repeatedPassword
        credentials.repeatedPasswordCorrect = isValid
    }

    @objc func questionButtonTapped () {
        delegate?.questionButtonTapped()

    }

    @objc func signInButtonTapped() {

        switch credentials.credentialsValidForSignIn() {
        case true:
            delegate?.signInTapped(password: credentials.password, email: credentials.email, fullName: credentials.fullName, image: credentials.photo, validCredentials: true)
        case false:
            delegate?.signInTapped(password: credentials.password, email: credentials.email, fullName: credentials.fullName, image: credentials.photo, validCredentials: false)
        }
    }


    // MARK: - Theme Methods
    private func theme() {
        themeBackgroundView()
        themeImagePickerView()
        themeTitleLabel()
        themeTextFields()
        themeQuestionLabel()
        themeButton()
    }

    private func themeBackgroundView() {
        guard let configuration = themeSource?.themeForBackgroundView(),
        let view = view as? SignInContainerView else {return}

        view.themeView(from: configuration)
    }

    private func themeImagePickerView() {
        guard let configuration = themeSource?.themeForImagePickerView(),
        let view = view as? SignInContainerView else {return}

        view.themeImagePicker(from: configuration)
    }

    private func themeTitleLabel() {
        guard let configuration = themeSource?.themeForLogInLabel(),
        let view = view as? SignInContainerView else {return}

        view.themeTitleLabel(from: configuration)
    }

    private func themeTextFields() {
        guard let configuration = themeSource?.themeForTextFields(),
        let view = view as? SignInContainerView else {return}

        view.themeTextFields(from: configuration)
    }

    private func themeQuestionLabel() {
        guard let configuration = themeSource?.themeForQuestionLabel(),
              let view = view as? SignInContainerView else {return}

        view.themeQuestionLabel(from: configuration)
    }

    private func themeButton() {
        guard let configuration = themeSource?.themeForButton(),
              let view = view as? SignInContainerView else {return}

        view.themeButton(from: configuration)

    }

    

}

extension SignInContainerViewController : ProfileImagePickerDelegate {
    func imagePicked(image: UIImage?) {
        self.photoPicked(photo: image)
    }

    func presentPicker(picker: PHPickerViewController) {
        self.present(picker, animated: true, completion: nil)
    }




}
