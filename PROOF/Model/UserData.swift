//
//  UserData.swift
//  PROOF
//
//  Created by Adrian Mazek on 15/03/2026.
//

import Foundation
import FirebaseFirestore

struct UserData: Codable, Identifiable{
    @DocumentID var id: String?
    var name: String
    var nickname: String
    let email: String
    let phoneNumber: String
    let birthDate: Date
    var gender: Gender
    var friends : [String]
    let createdAt: Date
    var profilePictureURL: String?
    
}

struct RegistrationDraft{
    var name: String = ""
    var nickname: String = ""
    var email: String = ""
    var phoneNumber: String = ""
    var birthDate: Date?
    var gender: Gender?
    
    func makeUserData() -> UserData? {
        guard let birthDate, let gender else { return nil }
        return UserData(id: nil, name: name, nickname: nickname, email: email, phoneNumber: phoneNumber, birthDate: birthDate, gender: gender, friends: [], createdAt: Date(), profilePictureURL: nil)
    }
    
}



