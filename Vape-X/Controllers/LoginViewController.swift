//
//  LoginViewController.swift
//  Vape-X
//
//  Created by sheikh on 9/22/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    var mockUser: String = "admin"
    var mockPassword: String = "admin786@"
    
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func unWrapTextField() {
        if let userNameText = txtfieldUsername.text, let passwordText = txtfieldPassword.text {
            if userNameText.isValidUsername() && passwordText.isValidPassword() {
                if userNameText == mockUser && passwordText == mockPassword {
                    let home: HomePageViewController = UIStoryboard(name: "HomePage", bundle: nil).instantiateViewController(withIdentifier: "HomePage") as! HomePageViewController
                    home.modalTransitionStyle = .crossDissolve
                    home.modalPresentationStyle = .fullScreen
                    present(home, animated: true)
                    ifCorrect()
                }
            } else {
                ifWrong()
            }
        }
    }
    
    func ifCorrect() {
        txtfieldUsername.layer.borderColor = UIColor.clear.cgColor
        txtfieldPassword.layer.borderColor = UIColor.clear.cgColor
        txtfieldUsername.text?.removeAll()
        txtfieldPassword.text?.removeAll()
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
