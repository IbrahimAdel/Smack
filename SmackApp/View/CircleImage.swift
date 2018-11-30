//
//  CircleImage.swift
//  SmackApp
//
//  Created by Ibrahim Hussein on 18/11/2018.
//  Copyright © 2018 Ibrahim Hussein. All rights reserved.
//

import UIKit

class CircleImage: UIImageView {

    override func awakeFromNib() {
        setupView()
    }
    func setupView(){
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
