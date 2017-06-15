//
//  FirstViewController.swift
//  PickerViewDemo
//
//  Created by Iggy on 6/15/17.
//  Copyright © 2017 iggym. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate , UITextFieldDelegate{

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var textView: UITextField!
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var buttonSelectionIndicator: UIButton!

    @IBOutlet weak var textSelectionIndicator: UILabel!
    
    var pickOption = ["Dallas", "Waco", "Reno", "Plano", "Houston", "Austin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.delegate = self
        self.textView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

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
        labelView.text = pickOption[row]
        textView.text = "You selected \(selectedOption)"
        
    }

    @IBAction func buttonTapped(_ sender: Any) {
        labelView.text = "Cleared Selection"
        textView.text = "Cleared Selection"
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
  
}

