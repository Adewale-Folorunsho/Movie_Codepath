//
//  ViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/1/22.
//

import UIKit

class TracksViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    // TODO: Pt 1 - Add a tracks property
    var movies: [Movie] = []

    // TODO: Pt 1 - Add table view outlet

    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Pt 1 - Set tracks property with mock tracks array
        movies = Movie.mockMovies
        print(movies)
        tableView.dataSource = self
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Pt 1 - Pass the selected track to the detail view controller
        // Get the cell that triggered the segue
        if let cell = sender as? UITableViewCell,
           // Get the index path of the cell from the table view
           let indexPath = tableView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController {

            // Use the index path to get the associated track
            let movie = movies[indexPath.row]

            // Set the track on the detail view controller
            detailViewController.movie = movie
        }

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell

        // Get the track that corresponds to the table view row
        let movie = movies[indexPath.row]

        // Configure the cell with it's associated track
        cell.configure(with: movie)

        // return the cell for display in the table view
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let indexPath = tableView.indexPathForSelectedRow {

            // Deselect the row at the corresponding index path
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

    // TODO: Pt 1 - Add table view data source methods


}
