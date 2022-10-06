//
//  LoginViewController.swift
//  Vape-X
//
//  Created by sheikh on 9/22/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    var mocUser: String = "test99"
    var mocPassword: String = "passWord12$"
    
    @IBOutlet weak var txtfieldUsername: UITextField!
    @IBOutlet weak var txtfieldPassword: UITextField!
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
    }
    @IBAction func loginButton(_ sender: UIButton) {
        unWrapTextField()
        checkMocUserAndPassword()
    }
    @IBAction func facebookButton(_ sender: UIButton) {
    }
    @IBAction func instagramButton(_ sender: UIButton) {
    }
    @IBAction func twitterButton(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func unWrapTextField() {
        if let userNameText = txtfieldUsername.text, let passwordText = txtfieldPassword.text {
            if userNameText.validUser() && passwordText.validPassword() {
                ifCorrect()
            } else {
                ifWrong()
            }
        }
    }
    
    func checkMocUserAndPassword(){
        if let userNameText = txtfieldUsername.text, let passwordText = txtfieldPassword.text {
            if userNameText == mocUser && passwordText == mocPassword {
                ifCorrect()
            } else {
                ifWrong()
            }
        }
    }
    
    func ifCorrect() {
        txtfieldUsername.layer.borderColor = UIColor.clear.cgColor
        txtfieldPassword.layer.borderColor = UIColor.clear.cgColor
    }
    
    func ifWrong() {
        txtfieldUsername.layer.borderColor = UIColor.red.cgColor
        txtfieldUsername.layer.borderWidth = 1.0
        txtfieldPassword.layer.borderColor = UIColor.red.cgColor
        txtfieldPassword.layer.borderWidth = 1.0
        txtfieldUsername.shake()
        txtfieldPassword.shake()
        txtfieldUsername.text?.removeAll()
        txtfieldPassword.text?.removeAll()
    }
}
