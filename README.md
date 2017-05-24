# ERAlertController
Very simple alert controller implemneted in swift 3.0. 
# How To Use
1. conform ERAlertControllerDelegate
2. in viewDidLoad ERAlertController.sharedInstance.delegate = self
3. call anywhere in the controller ERAlertController.showAlert("Alert!", message: "Security Token Missing", isCancel: false)

