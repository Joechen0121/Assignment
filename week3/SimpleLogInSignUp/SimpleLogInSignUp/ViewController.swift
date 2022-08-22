//
//  ViewController.swift
//  SimpleLogInSignUp
//
//  Created by 陳建綸 on 2022/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    enum SegmentStatus: Int {
        case logIn = 0
        case signUp
    }
    
    var segmentStatus: Int = SegmentStatus.logIn.rawValue // Init view = logIn status
    
    @IBOutlet weak var logInSignUpSegment: UISegmentedControl!
    
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    
    @IBOutlet weak var checkLabel: UILabel!
    
    @IBAction func logInSignUpSegment(_ sender: UISegmentedControl) {
        
        let index = sender.selectedSegmentIndex
        
        // 1. Record status
        segmentStatus = index
        
        // 2. Configure view
        switch index {
        case SegmentStatus.logIn.rawValue:
            configureLogInView()
        case SegmentStatus.signUp.rawValue:
            configureSignUpView()
        default:
            print("Unknown index: \(index)")
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        switch segmentStatus {
        case SegmentStatus.logIn.rawValue:
            checkLogInTextField()
        case SegmentStatus.signUp.rawValue:
            checkSignUpTextField()
        default:
            print("Unknown status: \(segmentStatus)")
        }
    }
    
    func checkLogInTextField() {
        if accountTextField.text!.isEmpty {
            showAlert(title: "Error", message: "Account should not be empty.")
        }
        else if passwordTextField.text!.isEmpty {
            showAlert(title: "Error", message: "Password should not be empty.")
        }
        else if accountTextField.text! != K.User.account ||
                    passwordTextField.text! != String(K.User.password) {
            showAlert(title: "Error", message: "Login fail.")
        }
        else {
            showAlert(title: "Information", message: "Login success.")
        }
    }
    
    func checkSignUpTextField() {
        if accountTextField.text!.isEmpty {
            showAlert(title: "Error", message: "Account should not be empty.")
        }
        else if passwordTextField.text!.isEmpty {
            showAlert(title: "Error", message: "Password should not be empty.")
        }
        else if checkTextField.text!.isEmpty {
            showAlert(title: "Error", message: "Check password should not be empty.")
        }
        else if passwordTextField.text != checkTextField.text {
            showAlert(title: "Error", message: "Signup fail.")
        }
        else {
            showAlert(title: "Information", message: "Signup success.")
        }
    }
    
    func configureLogInView() {
        checkLabel.textColor = .red
        
        checkTextField.text = ""
        accountTextField.text = ""
        passwordTextField.text = ""
        
        checkTextField.isUserInteractionEnabled = false
        checkTextField.backgroundColor = .red
    }
    
    func configureSignUpView() {
        checkLabel.textColor = .black
        
        accountTextField.text = ""
        passwordTextField.text = ""
        
        checkTextField.isUserInteractionEnabled = true
        checkTextField.tintColor = .white
        checkTextField.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension UIViewController {
    func showAlert(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message:
                                                    message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {
            action in
        }))
        self.present(alertController, animated: true, completion: nil)
    }
}
