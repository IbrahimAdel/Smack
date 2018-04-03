//
//  ChannelVC.swift
//  SmackApp
//
//  Created by Ibrahim Hussein on 03/04/2018.
//  Copyright © 2018 Ibrahim Hussein. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
