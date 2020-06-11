//
//  PostViewController.swift
//  Register
//
//  Created by admin on 4/4/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class PostViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var arrayButton: [UIButton]!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var lbTuoi: UILabel!
    @IBOutlet weak var txtName: UITextField!
    var arrayTuoi: [Int] = [Int](1...100)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        pickerView.selectRow(17, inComponent: 0, animated: true)

        // Do any additional setup after loading the view.
    }
    
    // RadioButton
    @IBAction func selectedButton(_ sender: UIButton) {
        guard sender.isSelected == false else {
            sender.isSelected = false
            sender.setImage(UIImage(named: "unchecked"), for: .normal)
            return
        }
        for button in arrayButton {
            button.isSelected = false
            button.setImage(UIImage(named: "unchecked"), for: .normal)
        }
        sender.isSelected = true
        sender.setImage(UIImage(named: "checked"), for: .normal)
        // lấy giá trị khi user chọn
        UserDefaults.standard.set(sender.currentTitle, forKey: "gender")
        
    }
    
    // picker view
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayTuoi.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(arrayTuoi[row])
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lbTuoi.text = String(arrayTuoi[row])
        UserDefaults.standard.set(String(arrayTuoi[row]), forKey: "age")
    }
    
    @IBAction func post(_ sender: UIButton) {
        if txtName.text != nil {
             UserDefaults.standard.set(txtName.text, forKey: "name")
        }
    }
    
}
