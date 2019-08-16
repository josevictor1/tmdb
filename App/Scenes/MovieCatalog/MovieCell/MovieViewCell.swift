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
    lazy var pageViewController: BackdropViewController? = {
        return BackdropViewController.xibInstance()
    }()

    // MARK: Setup PageViewController
    func setUpLayout() {
        setUpStyle()
        setUpContainerConstraints()
    }
    
    private func setUpStyle() {
        contentView.layer.cornerRadius = 15
        contentView.layer.borderWidth = 1.0
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        contentView.layer.masksToBounds = true
    }
    
    private func setUpContainerConstraints() {
        guard let pageViewController = pageViewController else { return }
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(pageViewController.view)
        pageViewController.view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        pageViewController.view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        pageViewController.view.topAnchor.constraint(equalTo: topAnchor).isActive = true
        pageViewController.view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

}
