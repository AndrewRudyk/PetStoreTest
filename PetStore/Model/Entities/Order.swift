//
//  Order.swift
//  PetStore
//
//  Created by Prostor9 on 01.10.2018.
//  Copyright © 2018 me. All rights reserved.
//

import Foundation

//id    integer($int64)
//petId    integer($int64)
//quantity    integer($int32)
//shipDate    string($date-time)
//status    string
//Order Status
//Enum:
//[ placed, approved, delivered ]
//complete    boolean

struct Order {
    let id: Int
    let petId: Int
    let quantity: Int
    let shipDate: Date
    var status: OrderStatuses
    var complete = false
}
