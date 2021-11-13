//
//  SignInContainerViewDelegate.swift
//  Welcomer
//
//  Created by Branimir Markovic on 13.11.21..
//

import Foundation
import UIKit


public protocol SignInContainerViewDelegate: AnyObject {
    func questionButtonTapped()
    func signInTapped(password: String?, email: String?, fullName: String?, image: UIImage, validCredentials: Bool)
}
