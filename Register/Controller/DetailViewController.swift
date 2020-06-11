//
//  DetailViewController.swift
//  Register
//
//  Created by admin on 4/4/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    var cityCode: Int?
    var array: [DistrictsData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        if cityCode != nil {
            array = DataService.shared.plistSelecter(cityCode: cityCode!)
        }
        
        print(cityCode!)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? DetailTableViewCell
        cell?.lbName.text = array[indexPath.row].name
        cell?.lbCodeCity.text = String(array[indexPath.row].codeCity!)
        cell?.lbCodeDistricts.text = String(array[indexPath.row].codeDistricts!)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        UserDefaults.standard.set(String(array[indexPath.row].codeCity!), forKey: "codeCity")
        
        UserDefaults.standard.set(String(array[indexPath.row].codeDistricts!), forKey: "codeDictricts")
        UserDefaults.standard.set(array[indexPath.row].name, forKey: "nameCity")
    }

}
