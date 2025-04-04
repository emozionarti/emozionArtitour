//
//  LoginResponse.swift
//  emozionArtitour
//
//  Created by Carmela Romano on 03/04/25.
//

struct LoginResponse: Codable {
    let success: Bool
    let message: String
    let user: User?
    
    struct User: Codable {
        let id: Int
        let email: String
    }
}
