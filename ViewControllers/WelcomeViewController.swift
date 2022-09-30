//
//  WelcomeViewController.swift
//  Vape-X
//
//  Created by Muhammad Uns on 9/22/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var logInOutlet: UIButton!
    @IBOutlet weak var createAccountOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIButtonSize()
    }
    
    func UIButtonSize() {
        logInOutlet.frame.size.height = 45
        logInOutlet.frame.size.width = 270
        logInOutlet.layer.cornerRadius = 22
        logInOutlet.layer.masksToBounds = true
        
        createAccountOutlet.frame.size.height = 45
        createAccountOutlet.frame.size.width = 270
        createAccountOutlet.layer.cornerRadius = 22
        createAccountOutlet.layer.masksToBounds = true
        
    }
    
    
    @IBAction func createAccount(_ sender: Any) {
    }
   
    @IBAction func LoginButton(_ sender: Any) {
    }
}
