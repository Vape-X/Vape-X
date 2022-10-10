//
//  TermsAndConditionViewController.swift
//  Vape-X
//
//  Created by Mehar on 10/2/22.
//

import UIKit

class TermsAndConditionViewController: UIViewController {
    
    @IBOutlet weak var mybuttonXCenter: NSLayoutConstraint!
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var myTextViewHeight: NSLayoutConstraint!
    @IBOutlet weak var readMoreButtonOutlet: UIButton!
    var isLabelMaxHeight = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureReadMoreButton()
    }
    
    @IBAction func readMoreButton(_ sender: Any) {
        configureReadMoreButton()
    }
    
    func configureReadMoreButton() {
        if isLabelMaxHeight {
            readMoreButtonOutlet.setTitle("", for: .normal)
            isLabelMaxHeight = false
            myTextViewHeight.constant = 280
            
            readMoreButtonOutlet.setImage(UIImage(systemName: "chevron.up")?.withTintColor(.systemBrown, renderingMode: .alwaysOriginal), for: .normal)
            mybuttonXCenter.constant = 80
            readMoreButtonOutlet.backgroundColor = .clear
            myTextView.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ghefn jhuhfe espam sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ghefn.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident."
        } else {
            isLabelMaxHeight = true
            readMoreButtonOutlet.setTitle("Read More", for: .normal)
            readMoreButtonOutlet.backgroundColor = .systemBrown
            myTextViewHeight.constant =  241
            mybuttonXCenter.constant = 0
            readMoreButtonOutlet.setImage(UIImage(systemName: "chevron.down"), for: .normal)
            myTextView.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ghefn jhuhfe espam sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ghefn."
        }
    }
}
