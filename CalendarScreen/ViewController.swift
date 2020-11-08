//
//  ViewController.swift
//  CalendarScreen
//
//  Created by PRABALJIT WALIA     on 08/11/20.
//

import UIKit

class ViewController: UIViewController,UIPickerViewAccessibilityDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.timePicker.delegate = self
        self.timePicker.dataSource = self
        pickerData = [["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"],["item A","item B"]]
    }


    @IBOutlet weak var timePicker: UIPickerView!
    
    var pickerData: [[String]] = [[String]]()
}

