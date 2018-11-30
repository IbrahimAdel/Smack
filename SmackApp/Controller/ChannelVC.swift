//
//  ChannelVC.swift
//  SmackApp
//

//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var avatarImg: CircleImage!
    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataChanged(_:)), name: USER_DATA_CHANGED, object: nil)
    }
    override func viewDidAppear(_ animated: Bool) {
        setupUserInfo()
    }
    @IBAction func logingBtnPressed(_ Sender: Any){
        if AuthService.instance.isLoggedIn{
            let profile = ProfileVC()
            profile.modalPresentationStyle = .custom
            present(profile, animated: true, completion: nil)
        } else{
            performSegue(withIdentifier: TO_LOGIN, sender: nil)
        }
    }
    
    @objc func userDataChanged(_ notif: Notification){
        setupUserInfo()
    }
    
    func setupUserInfo(){
        if AuthService.instance.isLoggedIn{
            loginBtn.setTitle(UserDataService.instance.name, for: .normal)
            avatarImg.image = UIImage(named: UserDataService.instance.avatarName)
            avatarImg.backgroundColor = UserDataService.instance.returnBackgroundColor(components: UserDataService.instance.avatarColor)
        } else{
            loginBtn.setTitle("Login", for: .normal)
            avatarImg.image = UIImage(named: "menuProfileIcon")
            avatarImg.backgroundColor = UIColor.clear
        }
    }
}
