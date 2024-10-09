//
//  AttractionController.swift
//  ParqueInfraestruturasVerdesApp
//
//  Created by Equip Mozambique on 10/9/24.
//  Copyright © 2024 Joel De Ariovaldo. All rights reserved.
//

import Foundation

class AttractionController {
    func fetchAttractions(completion: @escaping ([Attraction]) -> Void) {
        // Simulate network request to fetch attractions
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            let attractions = [
                Attraction(id: 1, name: "Attraction 1", description: "Description 1"),
                Attraction(id: 2, name: "Attraction 2", description: "Description 2")
            ]
            completion(attractions)
        }
    }
}