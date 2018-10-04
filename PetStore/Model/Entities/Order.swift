//
//  Order.swift
//  PetStore
//
//  Created by Prostor9 on 01.10.2018.
//  Copyright © 2018 me. All rights reserved.
//

import Foundation

struct Order {
    let id: Int
    let petId: Int
    let quantity: Int
    let shipDate: Date
    var status: OrderStatuses
    var complete = false
}
