//
//  Storyboardable.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 29/06/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

protocol Initializable: class {
    static var viewControllerName: String { get }
}

extension Initializable where Self: UIViewController {
    static var viewControllerName: String {
        return String(describing: self)
    }
    
    static func storyboardViewController() -> Self {
        let storyboard = UIStoryboard(name: viewControllerName , bundle: nil)
        
        guard let vc = storyboard.instantiateInitialViewController() as? Self else {
            fatalError("Could not instantiate initial storyboard with name: \(viewControllerName)")
        }
        
        return vc
    }
    
    static func xibViewController() -> Self {
        return Self(nibName: viewControllerName, bundle: nil)
    }
}

extension UIViewController: Initializable { }

