//
//  ImagePostCollectionCellController.swift
//  HandleDifferentCellsDemo
//
//  Created by Elsayed Hussein on 8/21/20.
//  Copyright © 2020 Elsayed Hussein. All rights reserved.
//

import UIKit

class ImagePostCollectionCellController: CollectionCellController {

    fileprivate let item: ImagePostStore
    
    init(item: ImagePostStore) {
        self.item = item
    }
    fileprivate static var cellIdentifier: String {
        return String(describing: ImagePostCollectionViewCell.self)
    }
    
    static func registerCell(on collectionView: UICollectionView) {
        collectionView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: ImagePostCollectionViewCell.identifier)
    }
    
    func cellFromCollectionView(_ collectionView: UICollectionView, forIndexPath indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImagePostCollectionViewCell.identifier, for: indexPath) as! ImagePostCollectionViewCell
        cell.configure(item.image)
        return cell
    }
    
    func didSelectCell() {
    }
    
    func sizeForItem(collectionView: UICollectionView) -> CGSize {
        ImagePostCollectionViewCell.sizeForItem(collectionView: collectionView)
    }
    
    func insetForSection(collectionView: UICollectionView) -> UIEdgeInsets {
        ImagePostCollectionViewCell.insetForSection(collectionView)
    }
}
