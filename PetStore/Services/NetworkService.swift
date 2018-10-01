//
//  NetworkService.swift
//  PetStore
//
//  Created by Prostor9 on 27.09.2018.
//  Copyright © 2018 me. All rights reserved.
//

import Foundation
import Alamofire

struct APIConstants {
    static let baseURL = "http://petstore.swagger.io/v2"
    
    static let petByStatus = baseURL + "/pet/findByStatus"
}

class NetworkService {
    
    static func getPetsBy(status: PetStatuses, completion: @escaping ()->(), failure: @escaping (Error) -> ()) {
        let urlString = APIConstants.petByStatus
        let paremetres: Parameters = ["status": status]
        
        Alamofire.request(urlString, method: .get, parameters: paremetres, encoding: URLEncoding.default)
            .validate()
            .responseJSON { (response) in

            switch response.result {
            case .success:
                print(response.debugDescription)
                completion()
            case .failure(let error):
                failure(error)
            }
        }
        
    }
    
    
}
