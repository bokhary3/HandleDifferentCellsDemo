//
//  CollectionCellFactory.swift
//  HandleDifferentCellsDemo
//
//  Created by Elsayed Hussein on 8/21/20.
//  Copyright © 2020 Elsayed Hussein. All rights reserved.
//

import UIKit

struct CollectionCellFactory {
    func register(on collectionView: UICollectionView) {
        ProfileCollectionCellController.registerCell(on: collectionView)
        MainTitleCollectionCellController.registerCell(on: collectionView)
        ImagePostCollectionCellController.registerCell(on: collectionView)
        RecentPhotosCollectionCellController.registerCell(on: collectionView)
    }
    func cellControllers(with items: [Any]) -> [CollectionCellController] {
        return items.map { item in
            if let profileStore = item as? ProfileStore {
                return ProfileCollectionCellController(item: profileStore)
            } else if let mainTitleStore = item as? MainTitleStore {
                return MainTitleCollectionCellController(item: mainTitleStore)
            } else if let imagePostStore = item as? ImagePostStore {
                return ImagePostCollectionCellController(item: imagePostStore)
            } else if let recentPhotosStore = item as? RecentPhotosStore {
                return RecentPhotosCollectionCellController(item: recentPhotosStore)
            }
            return MainTitleCollectionCellController(item: item as! MainTitleStore)
        }
    }
}
