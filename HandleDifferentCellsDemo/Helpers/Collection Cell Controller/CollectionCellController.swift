//
//  CollectionCellController.swift
//  HandleDifferentCellsDemo
//
//  Created by Elsayed Hussein on 8/21/20.
//  Copyright © 2020 Elsayed Hussein. All rights reserved.
//

import UIKit

protocol CollectionCellController {    
    static func registerCell(on collectionView: UICollectionView)
    func cellFromCollectionView(_ collectionView: UICollectionView, forIndexPath indexPath: IndexPath) -> UICollectionViewCell
    func didSelectCell()
    func sizeForItem(collectionView: UICollectionView) -> CGSize
    func insetForSection(collectionView: UICollectionView) -> UIEdgeInsets
}
extension CollectionCellController {
    func sizeForItem(collectionView: UICollectionView) -> CGSize {
        .zero
    }
    func insetForSection(collectionView: UICollectionView) -> UIEdgeInsets {
        .zero
    }
}
