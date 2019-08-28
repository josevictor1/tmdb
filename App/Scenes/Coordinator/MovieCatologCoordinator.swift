//
//  MovieCatologCoordinator.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 18/08/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

class MovieCatalogCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    var childrenCoordinators: [Coordinator] = []
    
    var parent: Coordinator?
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = MovieCatalogViewController.storyboardInstance()
        navigationController.setViewControllers([viewController], animated: false)
    }
    
}
