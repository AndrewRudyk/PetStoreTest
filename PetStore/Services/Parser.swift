//
//  Parser.swift
//  PetStore
//
//  Created by Andrey Rudyk on 10/4/18.
//  Copyright © 2018 me. All rights reserved.
//

import Foundation


class Parser {
    
    static func parsePets(data: Data) -> [Pet]? {
        guard let jsonValid = try? JSONSerialization.jsonObject(with: data, options: []),
        let jsonItemsArray = jsonValid as? [[String: Any]] else {
            return nil
        }
        
        var pets = [Pet]()
        
        for jsonItem in jsonItemsArray {
            var category: Category = Category(id: 0, name: "")
            if let categoryDict = jsonItem["category"] as? [String: Any] {
                let categoryId = categoryDict["id"] as? Int ?? 0
                let categoryName = categoryDict["name"] as? String ?? "unknown"
                category = Category(id: categoryId, name: categoryName)
            }
            guard let idPet = jsonItem["id"] as? Int, idPet != 0 else { continue }
            let name = jsonItem["name"] as? String ?? "unknown"
            let photoUrls = jsonItem["photoUrls"] as? String
            
            var status: PetStatuses = .available
            if let statusString = jsonItem["status"] as? String, let statusValue = PetStatuses(rawValue: statusString) {
                status = statusValue
            }
            
            let pet = Pet(id: idPet, category: category, name: name, photoUrls: photoUrls, status: status)
            pets.append(pet)
        }
        return pets
    }
}
