//
//  ViewController.swift
//  TraxGoogleMaps
//
//  Created by Veronika Hristozova on 10/12/16.
//  Copyright © 2016 Veronika Hristozova. All rights reserved.
//

import UIKit
import GooglePlaces
import GoogleMaps

class ViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var googleMapsContainer: UIView!
    var googleMapsView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.googleMapsView = GMSMapView(frame: self.googleMapsContainer.frame)
        self.view.addSubview(self.googleMapsView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func searchPlace(_ sender: UIBarButtonItem) {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        self.present(searchController, animated: true, completion: nil)
        
    }

}

