//
//  ProfileCollectionViewCell.swift
//  HandleDifferentCellsDemo
//
//  Created by Elsayed Hussein on 8/21/20.
//  Copyright © 2020 Elsayed Hussein. All rights reserved.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {
    //MARK: - Variables
    static let identifier = "ProfileCell"
    //MARK: - Outlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        HelperMethods.circle(profileImageView)
    }
    //MARK: - Methods
    
    //MARK: - Actions
    @IBAction func addProfileDidTapped(_ sender: UIButton) {
    }
}
