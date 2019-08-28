//
//  Coordinator.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 17/08/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

public protocol Coordinator: AnyObject {
    
    var navigationController: UINavigationController { get set }
    var childrenCoordinators: [Coordinator] { get set }
    var parent: Coordinator? { get set }
    
    init(navigationController: UINavigationController)
    
    func start()
    
}

extension Coordinator {
    
    static func instance(_ parent: Coordinator? = nil) -> Self {
        let navigationController = UINavigationController()
        let coordinator = Self.init(navigationController: navigationController)
        parent?.childrenCoordinators.append(coordinator)
        coordinator.parent = parent
        return coordinator
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childrenCoordinators.enumerated() {
            if coordinator === child {
                childrenCoordinators.remove(at: index)
                break
            }
        }
    }
    
}
