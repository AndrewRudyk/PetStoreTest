//
//  Pet.swift
//  PetStore
//
//  Created by Prostor9 on 01.10.2018.
//  Copyright © 2018 me. All rights reserved.
//

import Foundation

struct Pet {
    let id: Int
    let category: Category
    let name: String
    let photoUrls: String
    var tags: [Tag]
    var status: PetStatuses
}
