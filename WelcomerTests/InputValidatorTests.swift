//
//  InputValidatorTests.swift
//  WelcomerTests
//
//  Created by Branimir Markovic on 30.10.21..
//

import XCTest
@testable import Welcomer

class InputValidationServiceTests: XCTestCase {

    func test_setCustomValidationRules_setsCustomValidationRules() {
        let validator = InputValidator()

        validator.customValidationRules(name: "test1", email: "test2", password: "test3")
        let expectedResult = InputValidator.RegExRules(fullNameRegExRules: "test1", emailRegExRules: "test2", passwordRegExRules: "test3")

        XCTAssertEqual(validator.regExRules, expectedResult)

    }

    func test_setDefaultInputValidationRules_setsDefaultValidationRules() {
        let validator = InputValidator()

        validator.defaultValidationRules()

        let expectedResult = InputValidator.RegExRules(
            fullNameRegExRules: #"^(?=.{2,100}$)[A-Za-zÀ-ú][A-Za-zÀ-ú.'-]+(?: [A-Za-zÀ-ú.'-]+)* *$"#,
            emailRegExRules: #"^\S+@\S+\.\S+$"#,
            passwordRegExRules: #"(?=.{8,})"#)

        XCTAssertEqual(validator.regExRules, expectedResult)

    }

    func test_validateFullName_validatesFullName() {
        let validator = InputValidator()

        let result = validator.validateFullName("Joh Johnson")

        XCTAssertTrue(result)

        let result2 = validator.validateFullName("m4$$%eer")

        XCTAssertFalse(result2)

    }

    func test_validateEmail_validatesEmail() {
        let validator = InputValidator()

        var result = validator.validateEmail("johnJohn%")

        XCTAssertEqual(result, false)

        result = validator.validateEmail("john@gmail.com")

        XCTAssertEqual(result, true)

    }

    func test_validatePassword_validatesPassword() {
        let validator = InputValidator()

        var result = validator.validatePassword("test")
        XCTAssertEqual(result, false)

        result = validator.validatePassword("testtestt")

        XCTAssertEqual(result, true)
    }

}
