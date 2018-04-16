//
//  secondViewController.swift
//  ProjectThree
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 Scott Alquisa. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class secondViewController: UIViewController {

    @IBOutlet var menuTitleTwo: UINavigationItem!
    
    @IBOutlet var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.401048, longitude: -158.002690)
    let regionRadius: CLLocationDistance = 17000
    
    override func viewDidLoad() {
        
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
        super.viewDidLoad()
        
        centerMapOnLocation(location: initialLocation)

        
        // Do any additional setup after loading the view
        self.menuTitleTwo.title = "Location of Restaurants"
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
