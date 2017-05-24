# ERAlertController
Very simple alert controller fo swift 3.0 or above
# How To Use
1. conform ERAlertControllerDelegate
2. in viewDidLoad ERAlertController.sharedInstance.delegate = self
3. call anywhere in the controller ERAlertController.showAlert("Alert!", message: "Security Token Missing", isCancel: false)

