//
//  PurchaseController.swift
//  ParqueInfraestruturasVerdesApp
//
//  Created by Equip Mozambique on 10/9/24.
//  Copyright © 2024 Joel De Ariovaldo. All rights reserved.
//

import Foundation

class PurchaseController {
    func fetchPurchases(completion: @escaping ([Purchase]) -> Void) {
        // Simulate network request to fetch purchases
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            let purchases = [
                Purchase(id: 1, item: "Ticket 1", amount: 10.0, date: Date()),
                Purchase(id: 2, item: "Ticket 2", amount: 20.0, date: Date())
            ]
            completion(purchases)
        }
    }
}