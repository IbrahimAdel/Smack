//
//  AvatarPickerVC.swift
//  SmackApp
//
//  Created by Ibrahim Hussein on 18/11/2018.
//  Copyright © 2018 Ibrahim Hussein. All rights reserved.
//

import UIKit

class AvatarPickerVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    //outlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    //variables
    var avatarType = AvatarType.Dark
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell =
            collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell{
            cell.configureCell(index: indexPath.item, type: avatarType)
            return cell
        }
        return AvatarCell()
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    //to make number of columns dynamic
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var numberOfColumns :CGFloat =  3
        if UIScreen.main.bounds.width > 320{
            numberOfColumns =  4
        }
        let spaceBetweenCell: CGFloat = 10
        let padding: CGFloat = 40
        let cellDimension = ((collectionView.bounds.width - padding) - (numberOfColumns - 1) * spaceBetweenCell) / numberOfColumns
        
        return CGSize(width: cellDimension, height: cellDimension)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if avatarType == .Dark{
            UserDataService.instance.setAvatarName(avatarName: "dark\(indexPath.item)")
        }
        else if avatarType == .Light{
            UserDataService.instance.setAvatarName(avatarName: "light\(indexPath.item)")
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func BackButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func segmentControlChanged(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 0 {
            avatarType = AvatarType.Dark
        }
        else if segmentControl.selectedSegmentIndex == 1 {
            avatarType = AvatarType.Light
        }
        collectionView.reloadData()
    }
}
