//
//  AuthenticationService.swift
//  ParqueInfraestruturasVerdesApp
//
//  Created by Equip Mozambique on 10/9/24.
//  Copyright © 2024 Joel De Ariovaldo. All rights reserved.
//

import Foundation

class AuthenticationService {
    func register(username: String, email: String, password: String, completion: @escaping (Bool) -> Void) {
        // Simulate network request for registration
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            completion(true)
        }
    }

    func login(email: String, password: String, completion: @escaping (Bool) -> Void) {
        // Simulate network request for login
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            completion(true)
        }
    }
}