//
//  LoginPageViewController.swift
//  Vape-X
//
//  Created by Maha Qayyum on 9/22/22.
//


import UIKit

class CreateAccountController: UIViewController {
    
    @IBOutlet weak var usernameFeild: UITextField!
    @IBOutlet weak var emailFeild: UITextField!
    @IBOutlet weak var phoneNumberFeild: UITextField!
    @IBOutlet weak var passwardLabel: UILabel!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var nextButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        securePassword()
        hideKeyboardWhenTappedAround()
        setupAddTargetIsNotEmptyTextFields()
    }
    
    @IBAction func nextButton(_ sender: Any) {
    }
    
    @IBAction func loginButton(_ sender: Any) {
    }
    
    func securePassword() {
        passwordTextfield.isSecureTextEntry = true
        passwordTextfield.keyboardType = .asciiCapable
        phoneNumberFeild.keyboardType = .asciiCapableNumberPad
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
        usernameFeild.addTarget(self, action: #selector(textFieldsIsNotEmpty),for: .editingChanged)
        emailFeild.addTarget(self, action: #selector(textFieldsIsNotEmpty),for: .editingChanged)
        phoneNumberFeild.addTarget(self, action: #selector(textFieldsIsNotEmpty),for: .editingChanged)
        passwordTextfield.addTarget(self, action: #selector(textFieldsIsNotEmpty),for: .editingChanged)
    }
    
    @objc func textFieldsIsNotEmpty(sender: UITextField) {
        sender.text = sender.text?.trimmingCharacters(in: .whitespaces)
        guard let usernameText = usernameFeild.text, !usernameText.isEmpty, let emailAddressText = emailFeild.text, emailAddressText.isValidEmail, let phoneNumberText = phoneNumberFeild.text, let passWordText = passwordTextfield.text, passWordText.isValidPassword()
        else { self.nextButtonOutlet.isEnabled = false
            return }
        if phoneNumberFeild.text?.count == 10 {
            phoneNumberFeild.text = phoneNumberText.applyPatternOnNumbers(pattern: "(###)###-####", replacementCharacter: "#")
            phoneNumberFeild.resignFirstResponder()
            nextButtonOutlet.isEnabled = true
        }
    }
}

extension String {
    
    var isValidEmail: Bool {
        NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }
    
    func isValidPassword() -> Bool {
        let passwordRegex = "^(?=.*[!@#$&*])(?=.*[0-9]).{6,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }
    
    func applyPatternOnNumbers(pattern: String, replacementCharacter: Character) -> String {
        var pureNumber = self.replacingOccurrences( of: "[^0-9]", with: "", options: .regularExpression)
        for index in 0 ..< pattern.count {
            guard index < pureNumber.count else { return pureNumber }
            let stringIndex = String.Index(utf16Offset: index, in: pattern)
            let patternCharacter = pattern[stringIndex]
            guard patternCharacter != replacementCharacter else { continue }
            pureNumber.insert(patternCharacter, at: stringIndex)
        }
        return pureNumber
    }
}
