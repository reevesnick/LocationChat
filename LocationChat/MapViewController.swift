//
//  MapViewController.swift
//  LocationChat
//
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.delegate = self
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.requestAlwaysAuthorization() //optional
        self.locationManager.startUpdatingLocation()
        
        self.mapView.showsUserLocation = true
        
        // 1
        let location1 = CLLocationCoordinate2D(
            latitude: 36.072587,
            longitude: -79.775904
        )
        // 2
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location1, span: span)
        mapView.setRegion(region, animated: true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.coordinate = location1
        annotation.title = "Graham/McNair/Cherry"
        annotation.subtitle = "CompSci"
        mapView.addAnnotation(annotation)
        
        // 1
        let location2 = CLLocationCoordinate2D(
            latitude: 36.073782,
            longitude: -79.774925
        )
        // 2
        let span2 = MKCoordinateSpanMake(0.05, 0.05)
        let region2 = MKCoordinateRegion(center: location2, span: span2)
        mapView.setRegion(region2, animated: true)
        
        //3
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = location2
        annotation2.title = "Williams Cafeteria"
        annotation2.subtitle = "Dining"
        mapView.addAnnotation(annotation2)
        
        // 1
        let location3 = CLLocationCoordinate2D(
            latitude: 36.076349,
            longitude: -79.772103
        )
        // 2
        let span3 = MKCoordinateSpanMake(0.05, 0.05)
        let region3 = MKCoordinateRegion(center: location3, span: span3)
        mapView.setRegion(region3, animated: true)
        
        //3
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = location3
        annotation3.title = "The Villages"
        annotation3.subtitle = "Boarding"
        mapView.addAnnotation(annotation3)
        
        //User can add a new location
        let longPress = UILongPressGestureRecognizer(target: self, action: "action:")
        longPress.minimumPressDuration = 1.0
        mapView.addGestureRecognizer(longPress)
        
        /*
        //Setting Visible Area
        //NC A&T Location
        
        let initialLocation = CLLocation(latitude: 36.073036 , longitude: -79.7722320)
        
        centerMapOnLocation(initialLocation) */
    }
    
    /*
    //Diplay a region
    let regionRadius: CLLocationDistance = 500
    func centerMapOnLocation(location: CLLocation) {
    let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
    regionRadius * 2.0, regionRadius * 2.0)
    mapView.setRegion(coordinateRegion, animated: true)
    }
    */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
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
    
    //User sets a new location
    func action(gestureRecognizer:UIGestureRecognizer) {
        let touchPoint = gestureRecognizer.locationInView(self.mapView)
        let newCoord:CLLocationCoordinate2D = mapView.convertPoint(touchPoint, toCoordinateFromView: self.mapView)
        
        let newAnotation = MKPointAnnotation()
        newAnotation.coordinate = newCoord
        newAnotation.title = "Added Location"
        newAnotation.subtitle = "By User"
        mapView.addAnnotation(newAnotation)
        
    }
    
    
}
