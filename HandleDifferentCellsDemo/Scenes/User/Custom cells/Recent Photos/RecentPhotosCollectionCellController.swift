//
//  RecentPhotosCollectionCellController.swift
//  HandleDifferentCellsDemo
//
//  Created by Elsayed Hussein on 8/28/20.
//  Copyright © 2020 Elsayed Hussein. All rights reserved.
//

import UIKit

class RecentPhotosCollectionCellController: CollectionCellController {
    
    fileprivate let item: RecentPhotosStore
    
    init(item: RecentPhotosStore) {
        self.item = item
    }
    fileprivate static var cellIdentifier: String {
        return String(describing: RecentPhotosCollectionViewCell.self)
    }
    
    static func registerCell(on collectionView: UICollectionView) {
        collectionView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: RecentPhotosCollectionViewCell.identifier)
    }
    
    func cellFromCollectionView(_ collectionView: UICollectionView, forIndexPath indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecentPhotosCollectionViewCell.identifier, for: indexPath) as! RecentPhotosCollectionViewCell
        cell.setPhotos(item.photos)
        return cell
    }
    
    func didSelectCell() {
    }
    
    func sizeForItem(collectionView: UICollectionView) -> CGSize {
        CGSize(width: collectionView.frame.width, height: 90)
    }
}
