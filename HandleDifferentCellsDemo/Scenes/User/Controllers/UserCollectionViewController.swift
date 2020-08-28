//
//  UserCollectionViewController.swift
//  HandleDifferentCellsDemo
//
//  Created by Elsayed Hussein on 8/21/20.
//  Copyright © 2020 Elsayed Hussein. All rights reserved.
//

import UIKit

class UserCollectionViewController: UICollectionViewController {
    //MARK: - Variables
    fileprivate var collectionCellControllers = [[CollectionCellController]]()
    fileprivate var collectionCellFactory = CollectionCellFactory()
    
    //MARK: - Outlets
    
    
    //MARK: - View lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionCellFactory.register(on: collectionView)
        
        buildCollectionView()
    }
    
    //MARK: - Actions
    
    //MARK: - Methods
    fileprivate func buildCollectionView() {
        let recentPhotos = [UIImage(named: "lazyboard")!, UIImage(named: "bokhary")!, UIImage(named: "lazyboard")!, UIImage(named: "bokhary")!, UIImage(named: "lazyboard")!, UIImage(named: "bokhary")!]
        let firstSection = [ProfileStore(), MainTitleStore(title: "Recent photos"), RecentPhotosStore(photos: recentPhotos), MainTitleStore(title: "Other photos")] as [Any]
        let secondSection = [ImagePostStore(image: UIImage(named: "lazyboard")!), ImagePostStore(image: UIImage(named: "bokhary")!), ImagePostStore(image: UIImage(named: "lazyboard")!), ImagePostStore(image: UIImage(named: "bokhary")!), ImagePostStore(image: UIImage(named: "lazyboard")!), ImagePostStore(image: UIImage(named: "bokhary")!)]
        
        for section in [firstSection, secondSection] {
            collectionCellControllers.append(collectionCellFactory.cellControllers(with: section))
        }
    }
}
extension UserCollectionViewController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        collectionCellControllers.count
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionCellControllers[section].count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        collectionCellControllers[indexPath.section][indexPath.row].cellFromCollectionView(collectionView, forIndexPath: indexPath)
    }
}

extension UserCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        collectionCellControllers[indexPath.section][indexPath.row].sizeForItem(collectionView: collectionView)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        collectionCellControllers[section][0].insetForSection(collectionView: collectionView)
    }
}
