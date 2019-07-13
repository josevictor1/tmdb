//
//  Storyboardable.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 29/06/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

protocol Initializable: AnyObject { }

extension Initializable where Self: UIViewController {
    
    static func storyboardInstance() -> Self {
        let storyboard = UIStoryboard(name: "\(Self.self)" , bundle: nil)
        
        guard let viewController = storyboard.instantiateInitialViewController() as? Self else {
            fatalError("It couldn't instantiate initial storyboard named: \(Self.self)")
        }
        
        return viewController
    }
    
    static func xibInstance() -> Self {
        return Self(nibName: "\(Self.self)", bundle: nil)
    }
    
}

extension UIViewController: Initializable { }

