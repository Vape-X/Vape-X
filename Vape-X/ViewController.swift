//
//  ViewController.swift
//  Vape-X
//
//  Created by Haroon Maqsood on 9/18/22.
//

import UIKit
import FirebaseAnalytics

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func goToTermsAndConditions(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name: "TermsAndCondition", bundle: nil)
        let nextVc = storyBoard.instantiateViewController(withIdentifier: "TermsAndConditionViewController") as! TermsAndConditionViewController
        present(nextVc, animated: true)
    }
    
    
}
