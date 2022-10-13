//
//  ProfileScreenViewController.swift
//  Vape-X
//
//  Created by Abdul Khan on 10/12/22.
//

import UIKit

class ProfileScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var settingNames: [String] = ["Account Details","Card Details","Notifications","Delivery Information","Payment Information"]
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var memberSinceLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cornerRadius()
    }
    
    @IBAction func myAddressButton(_ sender: Any) {
    }
    
    @IBAction func orderButton(_ sender: Any) {
    }
    
    @IBAction func settingButton(_ sender: Any) {
    }
    
    func cornerRadius() {
        profileImage.layer.cornerRadius = 11
        profileImage.layer.masksToBounds = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settingNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileScreenTableViewCell", for: indexPath) as! ProfileScreenTableViewCell
        cell.profileDetailLabel.text = settingNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90
    }
}
