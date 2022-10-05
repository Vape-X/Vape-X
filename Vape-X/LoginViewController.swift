//
//  LoginViewController.swift
//  Vape-X
//
//  Created by sheikh on 9/22/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    var mocUser: String = "test"
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
                txtfieldUsername.layer.borderColor = UIColor.clear.cgColor
                txtfieldPassword.layer.borderColor = UIColor.clear.cgColor
            } else {
                txtfieldUsername.layer.borderColor = UIColor.red.cgColor
                txtfieldUsername.layer.borderWidth = 1.0
                txtfieldPassword.layer.borderColor = UIColor.red.cgColor
                txtfieldPassword.layer.borderWidth = 1.0
                txtfieldUsername.shake()
                txtfieldPassword.shake()
            }
        }
    }
    
    func checkMocUserAndPassword(){
        if txtfieldUsername.text == mocUser && txtfieldPassword.text == mocPassword {
            txtfieldUsername.layer.borderColor = UIColor.clear.cgColor
            txtfieldPassword.layer.borderColor = UIColor.clear.cgColor
        } else {
            txtfieldUsername.layer.borderColor = UIColor.red.cgColor
            txtfieldUsername.layer.borderWidth = 1.0
            txtfieldPassword.layer.borderColor = UIColor.red.cgColor
            txtfieldPassword.layer.borderWidth = 1.0
            txtfieldUsername.shake()
            txtfieldPassword.shake()
        }
    }
}

extension UITextField {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        animation.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(animation, forKey: "position")
    }
}

extension String{
    func validUser() -> Bool {
        let passwordRegex = "^(?=.*[0-9]).{6,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }
    func validPassword() -> Bool {
        let passwordRegex = "^(?=.*[!@#$&*])(?=.*[0-9]).{6,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }
}
