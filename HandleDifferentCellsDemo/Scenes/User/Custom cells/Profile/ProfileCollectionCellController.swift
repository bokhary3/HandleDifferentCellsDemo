//
//  ProfileCollectionCellController.swift
//  HandleDifferentCellsDemo
//
//  Created by Elsayed Hussein on 8/21/20.
//  Copyright © 2020 Elsayed Hussein. All rights reserved.
//

import UIKit

class ProfileCollectionCellController: CollectionCellController {

    fileprivate let item: ProfileStore
    
    init(item: ProfileStore) {
        self.item = item
    }
    fileprivate static var cellIdentifier: String {
        return String(describing: ProfileCollectionViewCell.self)
    }
    
    static func registerCell(on collectionView: UICollectionView) {
        collectionView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: ProfileCollectionViewCell.identifier)
    }
    
    func cellFromCollectionView(_ collectionView: UICollectionView, forIndexPath indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileCollectionViewCell.identifier, for: indexPath) as! ProfileCollectionViewCell
        return cell
    }
    
    func didSelectCell() {
    }
    
    func sizeForItem(collectionView: UICollectionView) -> CGSize {
        CGSize(width: collectionView.frame.width, height: 90)
    }
}
