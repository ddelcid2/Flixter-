//
//  MovieDetailsViewController.swift
//  Flixter
//
//  Created by Diana Del Cid on 9/23/21.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    
    @IBOutlet weak var posterView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseUrl = "https://image.tmdb.org/t/p/w500"
                
        // Downloads the Movie's Pictures
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrl + backdropPath)
                
        // Updates screen elements
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        posterView.af.setImage(withURL: posterUrl!)
        backdropView.af.setImage(withURL: backdropUrl!)
                
        // Updates label sizes
        titleLabel.sizeToFit()
        synopsisLabel.sizeToFit()
        
    
    }
    

   

}
