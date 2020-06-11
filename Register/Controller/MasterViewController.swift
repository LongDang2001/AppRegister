//
//  ViewController.swift
//  Register
//
//  Created by admin on 4/3/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        DataService.shared.setCityData()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.shared.cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDCell", for: indexPath) as? MasterTableViewCell
        cell?.lbName.text = DataService.shared.cities[indexPath.row].name
        cell?.lbCodeCity.text = String(DataService.shared.cities[indexPath.row].codeCity!)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        UserDefaults.standard.set(DataService.shared.cities[indexPath.row].name!, forKey: "nameCity")
        
        UserDefaults.standard.set(String(DataService.shared.cities[indexPath.row].codeCity!), forKey: "codeCity")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detaiviewcontroller = segue.destination as? DetailViewController {
            if let index = tableView.indexPathForSelectedRow {
                detaiviewcontroller.cityCode = DataService.shared.cities[index.row].codeCity
            }
        }
    }
}

