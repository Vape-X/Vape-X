//
//  TermsAndConditionViewController.swift
//  Vape-X
//
//  Created by Mehar on 10/2/22.
//

import UIKit

class TermsAndConditionViewController: UIViewController {

@IBOutlet weak var TextViewOutLet: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITextDesign()
    }
    
    @IBAction func ReadMoreButton(_ sender: Any) {
    }
    @IBAction func NextButton(_ sender: Any) {
    }
    @IBAction func LogInButton(_ sender: Any) {
    }
    
    func UITextDesign() {
        TextViewOutLet.isScrollEnabled = true
        TextViewOutLet.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda"
        
    }
}
