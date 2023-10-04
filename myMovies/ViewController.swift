import UIKit

class ViewController: UITableViewController {
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    
        var movie: Movie
        
        movie = Movie(title: "filme 1", description: "Descricao 1", image: UIImage(named: "filme1")!)
        movies.append( movie )
        
        movie = Movie(title: "filme 2", description: "Descricao 2", image: UIImage(named: "filme2")!)
        movies.append( movie )
        
        movie = Movie(title: "filme 3", description: "Descricao 3", image: UIImage(named: "filme3")!)
        movies.append(movie)
        
        movie = Movie(title: "filme 4", description: "Descricao 4", image: UIImage(named: "filme4")!)
        movies.append(movie)
        
        movie = Movie(title: "filme 5", description: "Descricao 5", image: UIImage(named: "filme5")!)
        movies.append(movie)
        
        movie = Movie(title: "filme 6", description: "Descricao 6", image: UIImage(named: "filme6")!)
        movies.append(movie)
        
        movie = Movie(title: "filme 7", description: "Descricao 7", image: UIImage(named: "filme7")!)
        movies.append(movie)
        
        movie = Movie(title: "filme 8", description: "Descricao 8", image: UIImage(named: "filme8")!)
        movies.append(movie)
        
        movie = Movie(title: "filme 9", description: "Descricao 9", image: UIImage(named: "filme9")!)
        movies.append(movie)
        
        movie = Movie(title: "filme 10", description: "Descricao 10", image: UIImage(named: "filme10")!)
        movies.append(movie)

        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movie: Movie = movies[ indexPath.row ]
        let reusableCell = "reusableCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCell, for: indexPath) as! movieCell
        cell.movieImageView.image = movie.image
        cell.titleLabel.text = movie.title
        cell.descriptionLabel.text = movie.description
        
        /*cell.movieImageView.layer.cornerRadius = 42
        cell.movieImageView.clipsToBounds = true*/
        
        return cell
    }
    
    /* passar dados de uma view para a outra */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "movieDetail" {
            
            if let indexPath = tableView.indexPathForSelectedRow {
                let selectedMovie = self.movies[ indexPath.row ]
                let viewControllerDestin = segue.destination as! MovieDetailsViewController
                viewControllerDestin.movie = selectedMovie
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
