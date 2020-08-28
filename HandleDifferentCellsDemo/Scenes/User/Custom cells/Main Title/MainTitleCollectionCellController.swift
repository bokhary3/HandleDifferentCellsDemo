//
//  MainTitleCollectionCellController.swift
//  HandleDifferentCellsDemo
//
//  Created by Elsayed Hussein on 8/21/20.
//  Copyright © 2020 Elsayed Hussein. All rights reserved.
//

import UIKit

class MainTitleCollectionCellController: CollectionCellController {

    fileprivate let item: MainTitleStore
    
    init(item: MainTitleStore) {
        self.item = item
    }
    fileprivate static var cellIdentifier: String {
        return String(describing: MainTitleCollectionViewCell.self)
    }
    
    static func registerCell(on collectionView: UICollectionView) {
        collectionView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: MainTitleCollectionViewCell.identifier)
    }
    
    func cellFromCollectionView(_ collectionView: UICollectionView, forIndexPath indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainTitleCollectionViewCell.identifier, for: indexPath) as! MainTitleCollectionViewCell
        cell.mainTitleLabel.text = item.title
        return cell
    }
    
    func didSelectCell() {
    }
    
    func sizeForItem(collectionView: UICollectionView) -> CGSize {
        CGSize(width: collectionView.frame.width, height: 40)
    }
    
}
