//
//  RecentPhotosCollectionViewCell.swift
//  HandleDifferentCellsDemo
//
//  Created by Elsayed Hussein on 8/21/20.
//  Copyright © 2020 Elsayed Hussein. All rights reserved.
//

import UIKit

class RecentPhotosCollectionViewCell: UICollectionViewCell {
    //MARK: - Variables
    static let identifier = "RecentPhotosCell"
    fileprivate var photos = [UIImage]()
    
    //MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ImagePostCollectionCellController.registerCell(on: collectionView)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    //MARK: - Methods
    func setPhotos(_ photos: [UIImage]) {
        self.photos = photos
        collectionView.reloadData()
    }
}

extension RecentPhotosCollectionViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImagePostCollectionViewCell.identifier, for: indexPath) as! ImagePostCollectionViewCell
        cell.configure(photos[indexPath.item])
        return cell
    }
    
}

extension RecentPhotosCollectionViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: collectionView.frame.height)
    }
}
