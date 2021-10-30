//
//  InputValidator.swift
//  Welcomer
//
//  Created by Branimir Markovic on 30.10.21..
//


import Foundation

final class InputValidator {

    struct RegExRules: Equatable {
         var fullNameRegExRules = #"^(?=.{2,100}$)[A-Za-zÀ-ú][A-Za-zÀ-ú.'-]+(?: [A-Za-zÀ-ú.'-]+)* *$"#
         var emailRegExRules = #"^\S+@\S+\.\S+$"#
         var passwordRegExRules = #"(?=.{8,})"#
    }

    private(set) var regExRules = RegExRules()

   public func customValidationRules(name: String, email: String, password: String) {
        self.regExRules.fullNameRegExRules = name
        self.regExRules.emailRegExRules = email
        self.regExRules.passwordRegExRules = password
    }

    public func defaultValidationRules() {
        self.regExRules.fullNameRegExRules = #"^(?=.{2,100}$)[A-Za-zÀ-ú][A-Za-zÀ-ú.'-]+(?: [A-Za-zÀ-ú.'-]+)* *$"#
        self.regExRules.emailRegExRules = #"^\S+@\S+\.\S+$"#
        self.regExRules.passwordRegExRules = #"(?=.{8,})"#
    }

    public func validateFullName(_ name: String?) -> Bool {
        guard let name = name else { return false }
        let result = name.range(of: regExRules.fullNameRegExRules, options: .regularExpression)
        return result != nil
    }

    public func validateEmail(_ email: String?) -> Bool {
        guard let email = email else {return false}
        let result = email.range(
            of: regExRules.emailRegExRules,
            options: .regularExpression
        )
        return result != nil
    }

  public func validatePassword(_ password: String?) -> Bool {
        guard let password = password else { return false }
        let result = password.range(of: regExRules.passwordRegExRules, options: .regularExpression)
        return result != nil
    }

}

