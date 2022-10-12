//
//  HomePageViewController.swift
//  Vape-X
//
//  Created by Muhammad Uns on 10/7/22.
//

import UIKit

class HomePageViewController: UIViewController {
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func burgerMenuButton(_ sender: Any) {
    }
    
    @IBAction func locationButton(_ sender: Any) {
    }
    
    @IBAction func vapeTypesButton(_ sender: Any) {
    }
    
    @IBAction func accesoriesButton(_ sender: Any) {
    }
    
    @IBAction func flavorsButton(_ sender: Any) {
    }
    
    @IBAction func vapePenButton(_ sender: Any) {
    }
    
    func setupUI() {
        topView.layer.borderWidth = 1
        topView.layer.borderColor = #colorLiteral(red: 0.7802144885, green: 0.6868239045, blue: 0.5122427344, alpha: 1)
        searchView.layer.borderWidth = 1
        searchView.layer.borderColor = #colorLiteral(red: 0.7802144885, green: 0.6868239045, blue: 0.5122427344, alpha: 1)
        searchView.layer.cornerRadius = 6
        searchView.layer.masksToBounds = true
        searchText.attributedPlaceholder = NSAttributedString(string: "Search", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.5047752261, green: 0.2883380353, blue: 0.1437902153, alpha: 1)])
    }
}
