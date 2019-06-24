//
//  MovieViewCell.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 22/06/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit


class MovieViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func fillWith(name: String, genre: String, releaseDate: String, posterImage: UIImage) {
        nameLabel.text = name
        genreLabel.text = genre
        releaseDateLabel.text = releaseDate
        posterImageView.image = posterImage
    }
}
