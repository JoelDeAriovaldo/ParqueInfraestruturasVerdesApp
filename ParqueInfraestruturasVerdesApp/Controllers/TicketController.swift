//
//  TicketController.swift
//  ParqueInfraestruturasVerdesApp
//
//  Created by Equip Mozambique on 10/9/24.
//  Copyright © 2024 Joel De Ariovaldo. All rights reserved.
//

import Foundation

class TicketController {
    func fetchTickets(completion: @escaping ([Ticket]) -> Void) {
        // Simulate network request to fetch tickets
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            let tickets = [
                Ticket(id: 1, name: "Ticket 1", date: Date()),
                Ticket(id: 2, name: "Ticket 2", date: Date())
            ]
            completion(tickets)
        }
    }
}