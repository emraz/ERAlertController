//
//  ERAlertController.swift
//  TestProject
//
//  Created by Mohammad Hasan on 2/16/17.
//  Copyright © 2017 Matrix Solution. All rights reserved.
//

import UIKit

protocol ERAlertControllerDelegate {
    func alertOKButtonAction()
    func alertCancelButtonAction()
}

class ERAlertController: NSObject {
    
    var delegate: ERAlertControllerDelegate!
    static let sharedInstance = ERAlertController()
    
    class func showAlert(_ title : String, message: String, isCancel: Bool) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: OK, style: .default) { action -> Void in
            //Do some other stuff
            if isCancel {
                
                if self.sharedInstance.delegate?.alertOKButtonAction != nil {
                    self.sharedInstance.delegate.alertOKButtonAction()
                }
                
            }
        }
        alertController.addAction(okButton)
        
        if isCancel {
            
            let cancelButton = UIAlertAction(title: CANCEL, style: .cancel){ action -> Void in
                //Do some other stuff
                
                if self.sharedInstance.delegate?.alertCancelButtonAction() != nil {
                    self.sharedInstance.delegate.alertCancelButtonAction()
                }
            }
            alertController.addAction(cancelButton)
        }
        
        var rootViewController = UIApplication.shared.keyWindow?.rootViewController
        if let navigationController = rootViewController as? UINavigationController {
            rootViewController = navigationController.viewControllers.first
        }
        if let tabBarController = rootViewController as? UITabBarController {
            rootViewController = tabBarController.selectedViewController
        }
        rootViewController?.present(alertController, animated: true, completion: nil)
    }    
    
}
