//
//  ColumnFlowLayout.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 20/06/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

class CatalogFlowLayout: UICollectionViewFlowLayout {
    
    override func prepare() {
        super.prepare()
        setUpCellSize()
        setUpEdgesInsets()
        setUpMinimumLineSpace()
    }
    
    private func setUpCellSize() {
        guard let collectionView = collectionView else { return }
        
        // Available collection width
        let availableWidth = collectionView.bounds.inset(by: collectionView.layoutMargins).size.width
        
        let padding: CGFloat = 40
        
        // Calculate cell size
        let cellWidth = availableWidth - padding
        let cellHeight: CGFloat = availableWidth * CGFloat(1.1)
        
        itemSize = CGSize(width: cellWidth, height: cellHeight)
    }
    
    private func setUpEdgesInsets() {
        let sectionInsets: CGFloat = 20
        sectionInset = UIEdgeInsets(top: sectionInsets,
                                    left: sectionInsets,
                                    bottom: sectionInsets,
                                    right: sectionInsets)
        sectionInsetReference = .fromContentInset
    }
    
    private func setUpMinimumLineSpace() {
        minimumLineSpacing = 40
    }
}
