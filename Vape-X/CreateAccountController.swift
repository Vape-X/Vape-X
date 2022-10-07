//
//  LoginPageViewController.swift
//  Vape-X
//
//  Created by Maha Qayyum on 9/22/22.

import UIKit

class CreateAccountController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var nextButtonOutlet: UIButton! {
        didSet {
            nextButtonOutlet.backgroundColor = #colorLiteral(red: 0.8561633229, green: 0.8264369369, blue: 0.5425977111, alpha: 1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        securePassword()
        hideKeyboardWhenTappedAround()
        setupAddTargetIsNotEmptyTextFields()
    }
    
    @IBAction func nextButton(_ sender: Any) {
        emptyTextField()
    }
    
    @IBAction func loginButton(_ sender: Any) {
    }
    
    func securePassword() {
        passwordTextfield.isSecureTextEntry = true
        emailAddressTextField.keyboardType = .asciiCapable
        userNameTextField.keyboardType = .asciiCapable
        passwordTextfield.keyboardType = .asciiCapable
        phoneNumberTextField.keyboardType = .asciiCapableNumberPad
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(CreateAccountController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func setupAddTargetIsNotEmptyTextFields() {
        nextButtonOutlet.isEnabled = false
        userNameTextField.addTarget(self, action: #selector(textFieldsIsNotEmpty),for: .editingChanged)
        emailAddressTextField.addTarget(self, action: #selector(textFieldsIsNotEmpty),for: .editingChanged)
        phoneNumberTextField.addTarget(self, action: #selector(testing),for: .editingChanged)
        passwordTextfield.addTarget(self, action: #selector(textFieldsIsNotEmpty),for: .editingChanged)
    }
    
    @objc func textFieldsIsNotEmpty(sender: UITextField) {
        sender.text = sender.text?.trimmingCharacters(in: .whitespaces)
        guard let usernameText = userNameTextField.text, usernameText.isValidUsername(), let emailAddressText = emailAddressTextField.text, emailAddressText.isValidEmail, let phoneNumberText = phoneNumberTextField.text, let passWordText = passwordTextfield.text, passWordText.isValidPassword()
        else { self.nextButtonOutlet.isEnabled = false
            return }
            nextButtonOutlet.isEnabled = true
    }
    
   @objc func testing(sender: UITextField) {
        if phoneNumberTextField.text?.count == 10 {
            if let phoneNumberText = phoneNumberTextField.text {
                phoneNumberTextField.text = phoneNumberText.applyPatternOnNumbers(pattern: "(###)###-####", replacementCharacter: "#")
                passwordTextfield.becomeFirstResponder()
            }
        }
    }
    
    func emptyTextField() {
        userNameTextField.text?.removeAll()
        emailAddressTextField.text?.removeAll()
        phoneNumberTextField.text?.removeAll()
        passwordTextfield.text?.removeAll()
    }
}
