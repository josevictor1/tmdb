//
//  ViewController.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 20/06/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

class MovieCatalogViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
    }
    
    // MARK: Collection View setup
    
    private func setUpCollectionView() {
        setUpCollectionViewFlowLayout()
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
    
    private func registerCollectionViewCells() {
        collectionView.register(MovieViewCell.self, forCellWithReuseIdentifier: "\(MovieViewCell.self)")
    }
    
    private func setUpChildViewControllers(_ viewController: UIViewController) {
        addChild(viewController)
        viewController.didMove(toParent: self)
    }
    
}

// MARK: - UICollectionViewDelegate
extension MovieCatalogViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let viewController = MovieDescriptionViewController.storyboardInstance()
        present(viewController, animated: true)
    }
}
