//
//  Credentials.swift
//  Welcomer
//
//  Created by Branimir Markovic on 28.11.21..
//

import Foundation
import UIKit



struct Credentials {

    var validator = InputValidator()

    var email : String?
    var password: String?
    var repeatedPasswordCorrect: Bool = false
    var fullName: String?
    var photo: UIImage?

    func isValidEmail() -> Bool {
        validator.validateEmail(email)
    }

    func isValidPassword() -> Bool {
        validator.validatePassword(password)
    }

    func isValidFullName() -> Bool {
        validator.validateFullName(fullName)
    }

    func credentialsValidForSignIn() -> Bool {
        isValidEmail() && isValidPassword() && repeatedPasswordCorrect && isValidFullName()
    }
}
