//
//  AvatarCell.swift
//  SmackApp
//
//  Created by Ibrahim Hussein on 18/11/2018.
//  Copyright © 2018 Ibrahim Hussein. All rights reserved.
//

import UIKit

enum AvatarType {
    case Dark
    case Light
}
class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func configureCell(index: Int, type: AvatarType){
        if type == AvatarType.Dark{
            avatarImg.image = UIImage(named: "dark\(index)")
            self.layer.backgroundColor = UIColor.gray.cgColor
        }
        else if type == AvatarType.Light{
            avatarImg.image = UIImage(named: "light\(index)")
            self.layer.backgroundColor = UIColor.lightGray.cgColor
        }
    }
    
    func setUpView(){
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
}
