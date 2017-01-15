//
//  DetailsViewController.swift
//  MovieViewer
//
//  Created by Eric Suarez on 1/14/17.
//  Copyright © 2017 Eric Suarez. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(movie)
        let title = movie["title"] as? String
        titleLabel.text = title
        
        let overview = movie["overview"] as? String
        overviewLabel.text = overview
        
        let baseUrl = "https://image.tmdb.org/t/p/w500"
        
        if let posterPath = movie?["poster_path"] as? String {
            let posterUrl = NSURL(string: baseUrl + posterPath)
            posterImageView.setImageWith(posterUrl! as URL)
        }
        
//        cell.posterImageView.setImageWith(
//            imageRequest as URLRequest,
//            placeholderImage: nil,
//            success: { (imageRequest, imageResponse, image) -> Void in
//                
//                // imageResponse will be nil if the image is cached
//                if imageResponse != nil {
//                    print("Image was NOT cached, fade in image")
//                    cell.posterImageView.alpha = 0.0
//                    cell.posterImageView.image = image
//                    UIView.animate(withDuration: 0.3, animations: { () -> Void in
//                        cell.posterImageView.alpha = 1.0
//                    })
//                } else {
//                    cell.posterImageView.image = image
//                }
//        },
//            failure: { (imageRequest, imageResponse, error) -> Void in
//                // do something for the failure condition
//        })

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
