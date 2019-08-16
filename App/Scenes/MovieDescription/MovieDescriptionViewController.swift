//
//  MovieDescriptionViewController.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 22/06/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

class MovieDescriptionViewController: UIViewController {
    
    // MARK: - Properties
    
    var onClose: (() -> Void)?
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var synopsisLabel: UILabel!
    
    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        onClose?()
    }
}
