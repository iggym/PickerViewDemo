//
//  SecondViewController.swift
//  PickerViewDemo
//
//  Created by Iggy on 6/15/17.
//  Copyright © 2017 iggym. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate , UITextFieldDelegate{

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var pickOption = ["Dallas", "Waco", "Reno", "Plano", "Houston", "Austin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.isHidden = true
        textField.text = pickOption[0]
        textField.delegate = self
        pickerView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // returns the number of 'columns' to display.
    // returns the number of 'columns' to display.
    @available(iOS 2.0, *)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // returns the # of rows in each component..
    @available(iOS 2.0, *)
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickOption.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickOption[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedOption = pickOption[row]
        pickerView.isHidden = true;
        textField.text = "You selected \(selectedOption)"
        
    }

    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
    {
        textField.text = pickOption[row]
        pickerView.isHidden = true;
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool   {
        pickerView.isHidden = false
        return false
    }

}

