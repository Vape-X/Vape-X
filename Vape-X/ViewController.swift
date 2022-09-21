//
//  ViewController.swift
//  Vape-X
//
//  Created by Haroon Maqsood on 9/18/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let loginVC = LoginVC(nibName: "LoginVC", bundle: nil)

        self.navigationController?.pushViewController(loginVC, animated: true)
       
    }


}

