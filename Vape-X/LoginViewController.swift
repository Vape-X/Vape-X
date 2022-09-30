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
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
    }
    @IBAction func loginButton(_ sender: UIButton) {
        unWrapTextField()
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
    
    func unWrapTextField() {
        if let userNameText = txtfieldUsername.text, let passwordText = txtfieldPassword.text {
            if passwordText.validPassword(){
                txtfieldPassword.layer.borderColor = UIColor.clear.cgColor
            } else {
                txtfieldPassword.layer.borderColor = UIColor.red.cgColor
                txtfieldPassword.layer.borderWidth = 1.0
                txtfieldPassword.shake()
            }
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
    
    func validPassword() -> Bool {
            let passwordRegex = "^(?=.*[!@#$&*])(?=.*[0-9]).{6,}$"
            return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
        }
}
