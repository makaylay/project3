//
//  secondViewController.swift
//  project3
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 Makayla Yanos. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class secondViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    //initial location
    let initialLocation = CLLocation(latitude: 21.298149, longitude: -157.861009 )
    let regionRadius: CLLocationDistance = 170
    
    let BarHnl = CLLocation(latitude: 21.298263, longitude: -157.860907)
    let hnlBrew = CLLocation(latitude: 21.297140, longitude: -157.860370)
    let morningBrew = CLLocation(latitude: 21.298168, longitude: -157.860700)
    let mokuKitch = CLLocation(latitude: 21.298255, longitude: -157.861692)
    let arvo = CLLocation(latitude: 21.298645, longitude: -157.861189)
    let highway = CLLocation(latitude: 21.297708, longitude: -157.861357)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Navigation Title
        self.navigationItem.title = "Eatery Location"
        
        centerMapOnLocation(location: initialLocation)
        
        let BarHnl = Restaurant(title: "9Bar HNL", type: "Coffee Shop", coordinate: CLLocationCoordinate2D(latitude: 21.298263, longitude: -157.860907))
            mapView.addAnnotation(BarHnl)
        let hnlBrew = Restaurant(title: "Honolulu Beer Works", type: "Brewpub", coordinate: CLLocationCoordinate2D(latitude: 21.297140, longitude: -157.860370))
            mapView.addAnnotation(hnlBrew)
        let morningBrew = Restaurant(title: "Morning Brew", type: "Cafe", coordinate: CLLocationCoordinate2D(latitude: 21.298168, longitude: -157.860700))
            mapView.addAnnotation(morningBrew)
        let mokuKitch = Restaurant(title: "Moku Kitchen", type: "America", coordinate: CLLocationCoordinate2D(latitude: 21.298255, longitude: -157.861692))
            mapView.addAnnotation(mokuKitch)
        let arvo = Restaurant(title: "Arvo Cafe", type: "Coffee Shop", coordinate: CLLocationCoordinate2D(latitude: 21.298645, longitude: -157.861189))
            mapView.addAnnotation(arvo)
        let highway = Restaurant(title: "Highway Inn", type: "Hawaiian food", coordinate: CLLocationCoordinate2D(latitude:21.297708, longitude: -157.861357))
            mapView.addAnnotation(highway)
        
        
    }
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
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
