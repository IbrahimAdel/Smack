//
//  ChannelVC.swift
//  SmackApp
//

//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    @IBAction func logingBtnPressed(_ Sender: Any){
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
}
