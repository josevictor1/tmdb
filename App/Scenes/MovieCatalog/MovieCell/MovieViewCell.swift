//
//  MovieViewCell.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 25/06/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

class MovieViewCell: UICollectionViewCell {
    
    // MARK: Properties
    lazy var pageViewController: HorizontalPagedViewController? = {
        return HorizontalPagedViewController(transitionStyle: .scroll,
                                                  navigationOrientation: .horizontal,
                                                  options: nil)
    }()

    
    // MARK: Setup PageViewController
    func setUpLayout() {
        setUpContainerConstraints()
    }
    
    private func setUpContainerConstraints() {
        
        guard let pageViewController = pageViewController else { return }
        
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(pageViewController.view)
        pageViewController.view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        pageViewController.view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        pageViewController.view.topAnchor.constraint(equalTo: topAnchor).isActive = true
        pageViewController.view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

}
