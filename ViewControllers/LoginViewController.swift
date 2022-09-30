//
//  LoginViewController.swift
//  Vape-X
//
//  Created by sheikh on 9/22/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtfieldUsername: UITextField!
    @IBOutlet weak var txtfieldPassword: UITextField!
    @IBOutlet weak var userTextFieldView: UIView!
    @IBOutlet weak var passTextFieldView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sizeOfTextFieldAndButton()
    }
    
    func sizeOfTextFieldAndButton() {
        userTextFieldView.frame.size.height = 300
        userTextFieldView.frame.size.width = 300
        userTextFieldView.layer.cornerRadius = 22
        userTextFieldView.layer.masksToBounds = true
        userTextFieldView.backgroundColor = .red
            
        passTextFieldView.frame.size.height = 45
        passTextFieldView.frame.size.width = 270
        passTextFieldView.layer.cornerRadius = 22
        passTextFieldView.layer.masksToBounds = true
            
    }

    @IBAction func forgotPasswordButton(_ sender: UIButton) {
    }

    @IBAction func loginButton(_ sender: UIButton) {
    }

    @IBAction func facebookButton(_ sender: UIButton) {
    }

    @IBAction func instagramButton(_ sender: UIButton) {
    }

    @IBAction func twitterButton(_ sender: UIButton) {
    }
    
    
}
