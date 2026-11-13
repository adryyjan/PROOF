//
//  RegisterViewModel.swift
//  PROOF
//
//  Created by Adrian Mazek on 11/11/2026.
//

import Foundation
import SwiftUI
import Observation
//struct UserData: Codable, Identifiable{
//    @DocumentID var id: String?
//    var name: String
//    var nickname: String
//    let email: String
//    let phoneNumber: String
//    let birthDate: Date
//    var gender: Gender
//    var friends : [String]
//    let createdAt: Date
//    var profilePictureURL: String?
//    
//}
//
//struct RegistrationDraft{
//    var name: String = ""
//    var nickname: String = ""
//    var email: String = ""
//    var phoneNumber: String = ""
//    var birthDate: Date?
//    var gender: Gender?
//    
//    func makeUserData() -> UserData? {
//        guard let birthDate, let gender else { return nil }
//        return UserData(id: nil, name: name, nickname: nickname, email: email, phoneNumber: phoneNumber, birthDate: birthDate, gender: gender, friends: [], createdAt: Date(), profilePictureURL: nil)
//    }
//    
//}



@Observable
final class RegisterViewModel {
    var draft = RegistrationDraft()
    var step = EventStep.credentisls
    var errorMessage: String?
    var createdUser: UserData?
    var password1 = ""
    var password2 = ""
    
    var isBasicCredantialsValid: Bool {
        guard !draft.email.isEmpty, password1.count >= 8, password1 == password2 else { return false }
        return true
    }
    
    var canGoNext: Bool {
        switch step {
        case .credentisls:
            return isBasicCredantialsValid
        case .personalInfo:
            return !draft.name.isEmpty && !draft.nickname.isEmpty
        case .aboutPearson:
            return draft.birthDate != nil && !draft.phoneNumber.isEmpty
        case .summary:
            return false
        }
    }
    
    var progress: Int {
        Int(step.rawValue + 1)
    }
    
    func next() {
        guard canGoNext, let target = EventStep(rawValue: step.rawValue + 1) else { return }
        step = target
    }
    
    func back(){
        guard let target = EventStep(rawValue : step.rawValue - 1) else {return}
        step = target
    }
    
    func finish() {
        guard let user = draft.makeUserData() else {
            errorMessage = "Nieuzupełniono wszystkiego lub wystąpił nieoczekiwany błąd"
            return
        }
        errorMessage = nil
        createdUser = user
    }
    
}


