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
        sizeOfTextFieldAndButton()
    }
    
    func sizeOfTextFieldAndButton() {
        usernameFeild.frame.size.height = 45
        usernameFeild.frame.size.width = 270
        usernameFeild.layer.cornerRadius = 22
        usernameFeild.layer.masksToBounds = true
        
        emailFeild.frame.size.height = 45
        emailFeild.frame.size.width = 270
        emailFeild.layer.cornerRadius = 22
        emailFeild.layer.masksToBounds = true
        
        phoneNumberFeild.frame.size.height = 45
        phoneNumberFeild.frame.size.width = 270
        phoneNumberFeild.layer.cornerRadius = 22
        phoneNumberFeild.layer.masksToBounds = true
        
        passwordTextfield.frame.size.height = 45
        passwordTextfield.frame.size.width = 270
        passwordTextfield.layer.cornerRadius = 22
        passwordTextfield.layer.masksToBounds = true
        
        nextButtonOutlet.frame.size.height = 45
        nextButtonOutlet.frame.size.width = 270
        nextButtonOutlet.layer.cornerRadius = 22
        nextButtonOutlet.layer.masksToBounds = true
        
    }
    
    @IBAction func nextButton(_ sender: Any) {
    }
    
    @IBAction func loginButton(_ sender: Any) {
    }
}
