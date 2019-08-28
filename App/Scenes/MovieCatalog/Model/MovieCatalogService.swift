//
//  MovieCatalogController.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 22/08/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import Foundation


class MovieCatalogService {
    
    func fetchMovies(_ completionHandler: @escaping ((Result<[Movie], Error>) -> Void)) {
        completionHandler(.success([Movie(name: "StarWars",
                                          releaseDate: "19/05/1995",
                                          genre: "Comedia"),
                                    Movie(name: "StarWars",
                                          releaseDate: "19/05/1995",
                                          genre: "Comedia"),
                                    Movie(name: "StarWars",
                                          releaseDate: "19/05/1995",
                                          genre: "Comedia"),
                                    Movie(name: "StarWars",
                                          releaseDate: "19/05/1995",
                                          genre: "Comedia")]))
    }
    
}
