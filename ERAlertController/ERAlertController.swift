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
    
    class func showAlert(_ title : String, message: String, isCancel: Bool, okButtonTitle: String, cancelButtonTitle: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: okButtonTitle, style: .default) { action -> Void in
            //Do some other stuff
            if isCancel {
                self.sharedInstance.delegate.alertOKButtonAction()
                
            }
        }
        alertController.addAction(okButton)
        
        if isCancel {
            
            let cancelButton = UIAlertAction(title: cancelButtonTitle, style: .cancel){ action -> Void in
                //Do some other stuff
                self.sharedInstance.delegate.alertCancelButtonAction()
            }
            alertController.addAction(cancelButton)
        }
        
        let alertWindow = UIWindow(frame: UIScreen.main.bounds)
        alertWindow.rootViewController = UIViewController()
        alertWindow.windowLevel = UIWindowLevelAlert + 1;
        alertWindow.makeKeyAndVisible()
        alertWindow.rootViewController?.present(alertController, animated: true, completion: nil)
    }
    
}
