//
//  ImagePostCollectionViewCell.swift
//  HandleDifferentCellsDemo
//
//  Created by Elsayed Hussein on 8/21/20.
//  Copyright © 2020 Elsayed Hussein. All rights reserved.
//

import UIKit

class ImagePostCollectionViewCell: UICollectionViewCell {
    //MARK: - Variables
    static let identifier = "ImagePostCell"
    //MARK: - Outlets
    @IBOutlet weak var imagePostImageView: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        HelperMethods.round(imagePostImageView, cornerRadius: 8)
    }
    //MARK: - Methods
    func configure(_ image: UIImage) {
        imagePostImageView.image = image
    }
    
    class func sizeForItem(collectionView: UICollectionView) -> CGSize {
        let numberOfItemsPerRow = 2
        let flowLayout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let totalSpace = flowLayout.sectionInset.left
            + flowLayout.sectionInset.right
            + (flowLayout.minimumInteritemSpacing * CGFloat(numberOfItemsPerRow - 1))
        let size = Double((collectionView.bounds.width - totalSpace) / CGFloat(numberOfItemsPerRow))
        return CGSize(width: 170, height: size)
    }
    
    class func insetForSection(_ collectionView: UICollectionView) -> UIEdgeInsets {
        var width = collectionView.frame.width
        width -= 170 * 2 // cell sizes
        width -= 10 // space between cells
        width /= 3
        return UIEdgeInsets(top: 0, left: width, bottom: 0, right: width)
    }
}
