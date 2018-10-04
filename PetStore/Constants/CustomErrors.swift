//
//  CustomErrors.swift
//  PetStore
//
//  Created by Andrey Rudyk on 10/4/18.
//  Copyright © 2018 me. All rights reserved.
//

import Foundation

enum ParseErrors: Error {
    case petsDataBroken
}

extension ParseErrors: CustomStringConvertible {
    var description: String {
        switch self {
        case .petsDataBroken: return "ParseErrors: pets data broken"
        }
    }
}
