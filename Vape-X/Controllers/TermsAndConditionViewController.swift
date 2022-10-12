//
//  File.swift
//  Vape-X
//
//  Created by muhammad huzaifa on 10/12/22.
//

import UIKit

class TermsAndConditionViewController: UIViewController {
    
    @IBOutlet weak var readMoreButtonXCenter: NSLayoutConstraint!
    @IBOutlet weak var termsAndConditionTextView: UITextView!
    @IBOutlet weak var termsAndConditiontextViewHeight: NSLayoutConstraint!
    @IBOutlet weak var readMoreButtonOutlet: UIButton!
    var isLabelMaxHeight = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureReadMoreButton()
    }
    
    @IBAction func goToNextVc(_ sender: Any) {
        let storyboard = UIStoryboard(name: "CreatePage", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CreatePage")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func readMoreButton(_ sender: Any) {
        configureReadMoreButton()
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "LoginPage", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginPage")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func configureReadMoreButton() {
        if isLabelMaxHeight {
            readMoreButtonOutlet.setTitle("", for: .normal)
            isLabelMaxHeight = false
            termsAndConditiontextViewHeight.constant = 280
            
            readMoreButtonOutlet.setImage(UIImage(systemName: "chevron.up")?.withTintColor(.systemBrown, renderingMode: .alwaysOriginal), for: .normal)
            readMoreButtonXCenter.constant = 80
            readMoreButtonOutlet.backgroundColor = .clear
            termsAndConditionTextView.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ghefn jhuhfe espam sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ghefn.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident."
        } else {
            isLabelMaxHeight = true
            readMoreButtonOutlet.setTitle("Read More", for: .normal)
            readMoreButtonOutlet.backgroundColor = .systemBrown
            termsAndConditiontextViewHeight.constant =  241
            readMoreButtonXCenter.constant = 0
            readMoreButtonOutlet.setImage(UIImage(systemName: "chevron.down"), for: .normal)
            termsAndConditionTextView.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ghefn jhuhfe espam sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ghefn."
        }
    }
}
