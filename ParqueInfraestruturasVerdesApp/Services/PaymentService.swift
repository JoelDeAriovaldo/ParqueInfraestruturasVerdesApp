//
//  PaymentService.swift
//  ParqueInfraestruturasVerdesApp
//
//  Created by Equip Mozambique on 10/9/24.
//  Copyright © 2024 Joel De Ariovaldo. All rights reserved.
//

import Foundation

class PaymentService {
    func processPayment(amount: Double, completion: @escaping (Bool) -> Void) {
        // Simulate network request to process payment
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            completion(true)
        }
    }
}