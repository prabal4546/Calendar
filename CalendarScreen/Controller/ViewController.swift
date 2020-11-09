//
//  ViewController.swift
//  CalendarScreen
//
//  Created by PRABALJIT WALIA
//  on 08/11/20.
//

import UIKit

class ViewController: UIViewController,UIPickerViewAccessibilityDelegate,UIPickerViewDataSource {
    // MARK:- UIPicker Protocols
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
//    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
//        return NSAttributedString(string: pickerData[component][row], attributes: [NSAttributedString.Key.foregroundColor: UIColor.init(red: 194, green: 101, blue: 101, alpha: 1)])
//
//    }
    //MARK:- View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calendar.layer.cornerRadius = 100
        calendar.layer.borderColor = UIColor.yellow.cgColor
        
        self.timePicker.delegate = self
        self.timePicker.dataSource = self
        
        pickerData = [["24", "23"],["45","30"]]
    }
//MARK:- Connections
    @IBOutlet weak var calendar: UIView!
    @IBOutlet weak var timePicker: UIPickerView!
    
    var pickerData: [[String]] = [[String]]()
}

