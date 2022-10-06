//
//  LoginValidateExtention.swift
//  Vape-X
//
//  Created by Bilal Naeem on 10/5/22.
//

import UIKit
extension UITextField {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        animation.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(animation, forKey: "position")
    }
}

extension String{
    func validUser() -> Bool {
        let passwordRegex = "^(?=.*[0-9]).{6,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }
    func validPassword() -> Bool {
        let passwordRegex = "^(?=.*[!@#$&*])(?=.*[0-9]).{6,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }
}
