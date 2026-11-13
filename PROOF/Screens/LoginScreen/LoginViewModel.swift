//
//  LoginViewModel.swift
//  PROOF
//
//  Created by Adrian Mazek on 13/11/2026.
//

import Foundation

final class LoginViewModel{
    var email = ""
    var password = ""
    
    var onApple: () -> Void = {}
    var onGoogle: () -> Void = {}
    var onLogin: () -> Void = {}
    var onForgotPassword: () -> Void = {}
    var onRegister: () -> Void = {}
}
