//
//  ProfileVC.swift
//  SmackApp
//
//  Created by Ibrahim Hussein on 19/11/2018.
//  Copyright © 2018 Ibrahim Hussein. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var email: UILabel!
    
    @IBOutlet weak var bgView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    @IBAction func exitPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func logoutPressed(_ sender: Any) {
        UserDataService.instance.logoutUser()
        dismiss(animated: true, completion: nil)
    }
    func setupView(){
        profileImg.image = UIImage(named: UserDataService.instance.avatarName)
        profileImg.backgroundColor =  UserDataService.instance.returnBackgroundColor(components: UserDataService.instance.avatarColor)
        username.text = UserDataService.instance.name
        email.text = UserDataService.instance.email
        let dismissTap = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap(_:)))
        bgView.addGestureRecognizer(dismissTap)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer){
        dismiss(animated: true, completion: nil)
    }
}
