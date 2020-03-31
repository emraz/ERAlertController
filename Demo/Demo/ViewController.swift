//
//  ViewController.swift
//  Demo
//
//  Created by Mahmudul Hasan on 2020/03/31.
//  Copyright © 2020 Matrix Solution Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showOnlyAlert(_ sender: Any) {
        ERAlertController.showAlert("Alert!", message: "ERAlertController with title and message", isCancel: false, okButtonTitle: "OK", cancelButtonTitle: "", completion: nil)
    }
    
    @IBAction func showAlertWithAction(_ sender: Any) {
        
        ERAlertController.showAlert("Alert!", message: "ERAlertController with button action", isCancel: true, okButtonTitle: "OK", cancelButtonTitle: "Cancel") { (isOK) in
            
            if(isOK) {
                print("OK button pressed")
            }
            else {
                print("Cancel button pressed")
            }
        }
    }
    
    @IBAction func showAlertWithCustomButton(_ sender: Any) {
        
        ERAlertController.showAlert("Alert!", message: "ERAlertController with custom button", isCancel: true, okButtonTitle: "Yes", cancelButtonTitle: "No") { (isOK) in
            
            if(isOK) {
                print("Yes button pressed")
            }
            else {
                print("No button pressed")
            }
        }
    }
}

