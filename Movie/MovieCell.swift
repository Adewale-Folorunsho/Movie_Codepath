//
//  TrackCell.swift
//  lab-tunley
//
//  Created by wale on 3/7/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    @IBOutlet weak var trackImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.movieName
        descriptionLabel.text = movie.description

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.artworkUrl100, into: trackImageView)
    }

}
