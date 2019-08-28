//
//  MovieCatalogDataSource.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 18/08/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

class MovieCatalogDataSource: NSObject, UICollectionViewDataSource {
    
    // MARK: - Properties
    
    private var movies: [Movie] = []
    private var service: MovieCatalogService? {
        didSet { fetchMovies() }
    }

    // MARK: - Data Source
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(MovieViewCell.self)", for: indexPath) as? MovieViewCell else {
            fatalError("Fail trying to dequeue cell with type \(MovieViewCell.self) ")
        }
        cell.setUpLayout()
        return cell
    }
    
    private func fetchMovies() {
        service?.fetchMovies { [weak self] response in
            switch response {
            case .success(let movies):
                self?.movies = movies
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
}

extension MovieCatalogDataSource {
    
    func makeMovieCatalogDataSource() -> MovieCatalogDataSource {
        let movieCatalogDataSource = MovieCatalogDataSource()
        movieCatalogDataSource.service = MovieCatalogService()
        return movieCatalogDataSource
    }
    
}
