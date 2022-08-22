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
    
    @IBOutlet weak var logInSignUpSegment: UISegmentedControl!
    
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    
    @IBOutlet weak var checkLabel: UILabel!
    
    @IBAction func logInSignUpSegment(_ sender: UISegmentedControl) {
        
        let index = sender.selectedSegmentIndex

        switch index {
        case SegmentStatus.logIn.rawValue:
            setLogInView()
        case SegmentStatus.signUp.rawValue:
            setSignUpView()
        default:
            print("Unknown index: \(index)")
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        let currentIndex = logInSignUpSegment.selectedSegmentIndex
        
        switch currentIndex {
        case SegmentStatus.logIn.rawValue:
            checkLogInTextField()
        case SegmentStatus.signUp.rawValue:
            checkSignUpTextField()
        default:
            print("Unknown status: \(currentIndex)")
        }
    }
    
    //MARK: - Check Text field function
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
    
    
    //MARK: - Configure View function
    func configurelogInSignUpSegment() {
        
        K.SegmentInfo.title.enumerated().forEach {
            logInSignUpSegment.setTitle($1, forSegmentAt: $0)
        }

        logInSignUpSegment.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        logInSignUpSegment.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        logInSignUpSegment.selectedSegmentTintColor = .black
    }
    
    func setLogInView() {
        checkLabel.textColor = .darkGray
        
        checkTextField.text = ""
        accountTextField.text = ""
        passwordTextField.text = ""
        
        checkTextField.isUserInteractionEnabled = false
        checkTextField.backgroundColor = .darkGray
    }
    
    func setSignUpView() {
        checkLabel.textColor = .black
        
        accountTextField.text = ""
        passwordTextField.text = ""
        
        checkTextField.isUserInteractionEnabled = true
        checkTextField.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurelogInSignUpSegment()
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
