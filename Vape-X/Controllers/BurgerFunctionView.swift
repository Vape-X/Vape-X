//
//  BurgerFunctionView.swift
//  Vape-X
//
//  Created by Muhammad Uns on 10/12/22.
//

import UIKit

class BurgerFunctionView: UIViewController {
    @IBOutlet weak var menuView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    
    @IBAction func dismissMenu(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

    func setupUI() {
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = menuView.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        menuView.addSubview(blurEffectView)
    }
    
}
