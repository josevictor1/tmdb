//
//  MovieCatallogDataSource.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 18/08/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import Foundation


class MovieCatalogViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(MovieViewCell.self)", for: indexPath) as? MovieViewCell else {
            fatalError("Fail trying to dequeue cell with type \(MovieViewCell.self) ")
        }
        setUpChildViewControllers(cell.pageViewController!)
        cell.setUpLayout()
        return cell
    }
}
