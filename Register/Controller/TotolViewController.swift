//
//  TotolViewController.swift
//  Register
//
//  Created by admin on 4/4/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class TotolViewController: UIViewController {

    
    @IBOutlet weak var nameUser: UILabel!
    @IBOutlet weak var nameCity: UILabel!
    @IBOutlet weak var codeCity: UILabel!
    @IBOutlet weak var codeDictricts: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var gender: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allValue()

        // Do any additional setup after loading the view.
    }
    
    func allValue() {
        nameCity.text = UserDefaults.standard.string(forKey: "nameCity")
        nameUser.text = UserDefaults.standard.object(forKey: "name") as? String
        codeCity.text = UserDefaults.standard.object(forKey: "codeCity") as? String
        codeDictricts.text = UserDefaults.standard.object(forKey: "codeDictricts") as? String
        age.text  = UserDefaults.standard.object(forKey: "age") as? String
        gender.text = UserDefaults.standard.string(forKey: "gender")
        
        
        
//        print(nameCity.text!)
//        print(codeCity.text!)
//        print(codeDictricts.text!)
//        print(age.text!)
//        print(gender.text!)
        
    }
    
}
