//
//  MapViewController.swift
//  LocationChat
//
//  Created by Neegbeah Reeves on 9/11/15.
//
//

import Foundation
import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    //@IBOutlet strong var locationManager: CLLocationManager! //Neegbeah mention this

    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        //Method from video w/ error
        
        self.locationManager.delegate = self
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        if #available(iOS 8.0, *) {
            
            self.locationManager.requestWhenInUseAuthorization()
            
        } else {
            
            self.locationManager.startUpdatingLocation()
            
            // Fallback on earlier versions
            
        }
        
        self.locationManager.startUpdatingLocation()
        
        
        
        self.mapView.showsUserLocation = true
        
        
        
        
        
        //NC A&T Location
        
        let initialLocation = CLLocation(latitude: 36.073036 , longitude: -79.7722320)
        
        centerMapOnLocation(initialLocation)
        
        
        
    }
    
    
    
    let regionRadius: CLLocationDistance = 1000
    
    func centerMapOnLocation(location: CLLocation) {
        
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            
            regionRadius * 2.0, regionRadius * 2.0)
        
        mapView.setRegion(coordinateRegion, animated: true)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    //Method from video w/ error
    
    //Location Delegate Methods
    
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        
        
        let location = locations.last
        
        let center = CLLocationCoordinate2D(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
        
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
        
        self.mapView.setRegion(region, animated: true)
        
        self.locationManager.stopUpdatingLocation()
        
        
        
    }
    
    
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        
        print("Errors: " + error.localizedDescription)
        
    }
    
    
    
}

