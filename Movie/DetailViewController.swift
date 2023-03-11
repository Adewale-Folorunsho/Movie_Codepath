//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var trackImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var voteAVGLabel: UILabel!
    
    @IBOutlet weak var voteNoLabel: UILabel!
    
    @IBOutlet weak var popularityLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // TODO: Pt 1 - Add a track property
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        Nuke.loadImage(with: movie.artworkUrl100, into: trackImageView)

        // Set labels with the associated track values.
        nameLabel.text = movie.movieName
        voteAVGLabel.text = movie.voteAVG + " Vote Average"
        voteNoLabel.text = movie.voteCount + " Votes"
        popularityLabel.text = movie.popularity + " Popularity"
        descriptionLabel.text = movie.description

    }



}
