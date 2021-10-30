//
//  LogInContainerViewDelegate.swift
//  Welcomer
//
//  Created by Branimir Markovic on 30.10.21..
//

import Foundation

public protocol LogInContainerViewDelegate : AnyObject {
   func questionButtonTapped()
   func logInTapped(password: String?, email: String?, validCredentials: Bool)
}
