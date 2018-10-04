//
//  ViewController.swift
//  PetStore
//
//  Created by Prostor9 on 27.09.2018.
//  Copyright © 2018 me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    @IBAction func testAction(_ sender: UIButton) {
        NetworkService.getPetsBy(status: .sold , completion: {_ in 

        }) { (_) in
            
        }
    }
    
}

