//
//  ViewController.swift
//  Miracle Pill
//
//  Created by Oliver Edgell on 22/01/2017.
//  Copyright © 2017 Oliver Edgell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var pcField: UITextField!
    @IBOutlet weak var pcLabel: UILabel!
    
    @IBOutlet weak var countyLabel: UILabel!
    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var fullnameField: UITextField!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityField: UITextField!
    
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var successImg: UIImageView!
    
    let states = ["Cheshire", "Greater Manchester", "Lancashire", "Merseyside"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self;
        statePicker.delegate = self;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        pcField.isHidden = true;
        pcLabel.isHidden = true;
    }
    
    
    @IBAction func buyBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = true;
        statePickerBtn.isHidden = true
        pcField.isHidden = true;
        pcLabel.isHidden = true;
        fullnameField.isHidden = true;
        fullnameLabel.isHidden = true;
        streetField.isHidden = true;
        streetLabel.isHidden = true;
        cityLabel.isHidden = true;
        cityField.isHidden = true;
        successImg.isHidden = false;
        countyLabel.isHidden = true;
        buyBtn.isHidden = true;
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true;
        pcField.isHidden = false;
        pcLabel.isHidden = false;
    }

}

