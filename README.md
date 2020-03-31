# ERAlertController
* Very simple alert controller fo swift 3.0 or above
* Compitable with UIWindowScene
* Compitable for Swift 5.0, iOS 11.3.X or above
# How To Use
1. To show only Alert

        ERAlertController.showAlert("Alert!", message: "ERAlertController with title and message", isCancel: false, okButtonTitle: "OK", cancelButtonTitle: "", completion: nil)


2. To use button press action and custom title of the Alert controller button

        ERAlertController.showAlert("Alert!", message: "ERAlertController with button action", isCancel: true, okButtonTitle: "OK", cancelButtonTitle: "Cancel") { (isOK) in
            
            if(isOK) {
                print("OK button pressed")
            }
            else {
                print("Cancel button pressed")
            }
        }
