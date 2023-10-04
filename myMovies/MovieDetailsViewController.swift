import Foundation
import UIKit

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImageView.image = movie.image
        movieTitle.text = movie.title
        movieDescription.text = movie.description
    }
}
