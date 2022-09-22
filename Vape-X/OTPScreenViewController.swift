//
//  OTPScreenViewController.swift
//  Vape-X
//
//  Created by Abdul Khan on 9/21/22.
//

import UIKit

class OTPScreenViewController: UIViewController {
    
    @IBOutlet weak var createAccountOTPButton: UIButton!
    @IBOutlet weak var OTPFirstTextField: UITextField!
    @IBOutlet weak var OTPSecondTextField: UITextField!
    @IBOutlet weak var OTPThirdTextField: UITextField!
    @IBOutlet weak var OTPFourthTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editingTextField()
        cornerRadius()
    }
    
    func cornerRadius() {
        createAccountOTPButton.layer.cornerRadius = 35
        createAccountOTPButton.layer.masksToBounds = true
    }
    
    func editingTextField() {
        OTPFirstTextField.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
        OTPSecondTextField.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
        OTPThirdTextField.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
        OTPFourthTextField.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
    }
    
    @objc func textDidChange(textField: UITextField) {
        let text = textField.text
        if text?.count == 1 {
            switch textField {
            case OTPFirstTextField:
                OTPSecondTextField.becomeFirstResponder()
            case OTPSecondTextField:
                OTPThirdTextField.becomeFirstResponder()
            case OTPThirdTextField:
                OTPFourthTextField.becomeFirstResponder()
            case OTPFourthTextField:
                OTPFourthTextField.resignFirstResponder()
            default:
                break
            }
        }else if text?.count == 0 {
            switch textField {
            case OTPFirstTextField:
                OTPFirstTextField.becomeFirstResponder()
            case OTPSecondTextField:
                OTPFirstTextField.becomeFirstResponder()
            case OTPThirdTextField:
                OTPSecondTextField.becomeFirstResponder()
            case OTPFourthTextField:
                OTPThirdTextField.becomeFirstResponder()
            default:
                break
            }
        }
    }
}
