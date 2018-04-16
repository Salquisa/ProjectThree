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
    
    let initialLocation = CLLocation(latitude: 21.383430, longitude: -158.005339)
    let regionRadius: CLLocationDistance = 16000
    
    override func viewDidLoad() {
        
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
        super.viewDidLoad()
        
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "California Pizza Kitchen", type: "California Pizza Kitchen", coordinate: CLLocationCoordinate2D(latitude: 21.453862, longitude: -158.006604))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Pieology", type: "Pieology", coordinate: CLLocationCoordinate2D(latitude: 21.385116, longitude: -157.941679))
        mapView.addAnnotation(restaurantTwo)
        
        let restaurantThree = Restaurant(title: "Panda Express", type: "Panda Express", coordinate: CLLocationCoordinate2D(latitude: 21.426544, longitude: -158.001477))
        mapView.addAnnotation(restaurantThree)

        let restaurantFour = Restaurant(title: "Applebee's", type: "Applebee's", coordinate: CLLocationCoordinate2D(latitude: 21.333471, longitude: -158.052807))
        mapView.addAnnotation(restaurantFour)
        
        let restaurantFive = Restaurant(title: "Johnny Rockets", type: "Johnny Rockets", coordinate: CLLocationCoordinate2D(latitude: 21.396613, longitude: -157.977040))
        mapView.addAnnotation(restaurantFive)
        
        let restaurantSix = Restaurant(title: "Sushi Bay", type: "Sushi Bay", coordinate: CLLocationCoordinate2D(latitude: 21.339841, longitude: -158.078220))
        mapView.addAnnotation(restaurantSix)
        
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
