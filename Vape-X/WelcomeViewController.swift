//
//  WelcomeViewController.swift
//  Vape-X
//
//  Created by Muhammad Uns on 9/22/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func createAccount(_ sender: Any) {
        let storyboard = UIStoryboard(name: "CreatePage", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CreatePage")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func LoginButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "LoginStoryboard", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginStoryboard")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
