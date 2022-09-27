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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "OTPScreen", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "OTPScreen")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "LoginStoryboard", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginStoryboard")
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
