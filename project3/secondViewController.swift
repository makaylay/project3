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
    let initialLocation = CLLocation(latitude: 21.298342, longitude: -157.860581 )
    let regionRadius: CLLocationDistance = 1000
    
    let eggheadCafe = CLLocation(latitude: 21.298611, longitude: -157.855004)
    let hnlBrew = CLLocation(latitude: 21.297416, longitude: -157.860066)
    let morningBrew = CLLocation(latitude: 21.298345, longitude: -157.860464)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Navigation Title
        self.navigationItem.title = "Eatery Location"
        
        centerMapOnLocation(location: initialLocation)
        
        let eggheadCafe = Restaurant(title: "Egghead Cafe", type: "Breakfast", coordinate: CLLocationCoordinate2D(latitude: 21.298611, longitude: -157.855004))
            mapView.addAnnotation(eggheadCafe)
        let hnlBrew = Restaurant(title: "Honolulu Beer Works", type: "Brewpub", coordinate: CLLocationCoordinate2D(latitude: 21.297416, longitude: -157.860066))
            mapView.addAnnotation(hnlBrew)
        let morningBrew = Restaurant(title: "Morning Brew", type: "Cafe", coordinate: CLLocationCoordinate2D(latitude: 21.298345, longitude: -157.860464))
            mapView.addAnnotation(morningBrew)
        
        
        
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
