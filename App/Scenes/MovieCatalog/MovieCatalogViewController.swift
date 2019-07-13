//
//  ViewController.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 20/06/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

class MovieCatalogViewController: UIViewController {
    
    // MARK: Properties
    
    var movies: [[Int]] = [[1,2,3,4,5,6,7,8,9,10,11,12,13,4,6,4,3,5,2,1], [1,2,3,4,5,6,7,8,9,10,11,12,13,4,6,4,3,5,2,1]]
    
    // MARK: IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
    }
    
    // MARK: CollectionView setup
    
    private func setUpCollectionView() {
        setUpCollectionViewFlowLayout()
        setUpCollectionViewDataSource()
        setUpCollectionViewDelegate()
        registerCollectionViewCells()
    }
    
    private func setUpCollectionViewFlowLayout() {
        let flowLayout = CatalogFlowLayout()
        collectionView.collectionViewLayout = flowLayout
    }
    
    private func setUpCollectionViewDelegate() {
        collectionView.delegate = self
    }
    
    private func setUpCollectionViewDataSource() {
        collectionView.dataSource = self
    }
    
    private func registerCollectionViewCells() {
        collectionView.register(MovieViewCell.self, forCellWithReuseIdentifier: "\(MovieViewCell.self)")
    }
}

// MARK: - UICollectionViewDataSource
extension MovieCatalogViewController: UICollectionViewDataSource {
    
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
        cell.setUpLayout()
        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension MovieCatalogViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
