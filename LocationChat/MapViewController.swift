//
//  MapViewController.swift
//  LocationChat
//
//
//  Created by Neegbeah Reeves, Brittany Simmions, and Nino Roberston  on 9/30/15.
//

import UIKit
import MapKit
import CoreLocation
import PubNub



class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home"
        
        self.locationManager.delegate = self
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.requestAlwaysAuthorization() //optional
        self.locationManager.startUpdatingLocation()
        
        self.mapView.showsUserLocation = true
        mapView.userTrackingMode = MKUserTrackingMode(rawValue: 2)!;
        
        /*
        // PubNub Delegate
        PubNub.setDelegate(self);
        PubNub.setConfiguration(self.config)
        PubNub.connect()
        self.channel = PNChannel.chane
      */
        
        // Drawing path or route covered
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
        //annotation3.subtitle = "Boarding"
        mapView.addAnnotation(annotation3)
 
        // 1
        let location4 = CLLocationCoordinate2D(
            latitude: 36.074797,
            longitude: -79.777629
        )
        // 2
        let span4 = MKCoordinateSpanMake(0.05, 0.05)
        let region4 = MKCoordinateRegion(center: location4, span: span4)
        mapView.setRegion(region4, animated: true)
        
        //3
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = location4
        annotation4.title = "A&T Four"
        //annotation4.subtitle = ""
        mapView.addAnnotation(annotation4)
        
        // 1
        let location5 = CLLocationCoordinate2D(
            latitude: 36.076557,
            longitude: -79.768852
        )
        // 2
        let span5 = MKCoordinateSpanMake(0.05, 0.05)
        let region5 = MKCoordinateRegion(center: location5, span: span5)
        mapView.setRegion(region5, animated: true)
        
        //3
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = location5
        annotation5.title = "Corbett Sports Complex"
        //annotation5.subtitle = ""
        mapView.addAnnotation(annotation5)
        
        // 1
        let location6 = CLLocationCoordinate2D(
            latitude: 36.076713,
            longitude: -79.770934
        )
        // 2
        let span6 = MKCoordinateSpanMake(0.05, 0.05)
        let region6 = MKCoordinateRegion(center: location6, span: span6)
        mapView.setRegion(region6, animated: true)
        
        //3
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = location6
        annotation6.title = "Aggie Dome"
        ///annotation6.subtitle = ""
        mapView.addAnnotation(annotation6)
        
        // 1
        let location7 = CLLocationCoordinate2D(
            latitude: 36.081110,
            longitude: -79.770086
        )
        // 2
        let span7 = MKCoordinateSpanMake(0.05, 0.05)
        let region7 = MKCoordinateRegion(center: location7, span: span7)
        mapView.setRegion(region7, animated: true)
        
        //3
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = location7
        annotation7.title = "Aggie Football Stadium"
        //annotation7.subtitle = ""
        mapView.addAnnotation(annotation7)
        
        // 1
        let location8 = CLLocationCoordinate2D(
            latitude: 36.075385,
            longitude: -79.769616
        )
        // 2
        let span8 = MKCoordinateSpanMake(0.05, 0.05)
        let region8 = MKCoordinateRegion(center: location8, span: span8)
        mapView.setRegion(region8, animated: true)
        
        //3
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = location8
        annotation8.title = "Sebasation"
        annotation8.subtitle = "Health Center"
        mapView.addAnnotation(annotation8)
        
        // 1
        let location9 = CLLocationCoordinate2D(
            latitude: 36.075265,
            longitude: -79.772178
        )
        // 2
        let span9 = MKCoordinateSpanMake(0.05, 0.05)
        let region9 = MKCoordinateRegion(center: location9, span: span9)
        mapView.setRegion(region9, animated: true)
        
        //3
        let annotation9 = MKPointAnnotation()
        annotation9.coordinate = location9
        annotation9.title = "Tower"
        annotation9.subtitle = "Clock"
        mapView.addAnnotation(annotation9)
        
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
    
    override func viewWillAppear(animated: Bool) {
        locationManager.startUpdatingHeading()
        locationManager.startUpdatingLocation()
    }
    
    override func viewWillDisappear(animated: Bool) {
        locationManager.stopUpdatingHeading()
        locationManager.stopUpdatingLocation()
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
        
      print("current position: \(location!.coordinate.longitude), \(location!.coordinate.latitude)")
        
    }
    // Drawing the route of the map covered
    func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation, fromLocation oldLocation: CLLocation) {
        print("Present Location: \(newLocation.coordinate.latitude), \(newLocation.coordinate.longitude)")
        
        if let oldLocationNew = oldLocation as CLLocation?{
            let oldCoordinates = oldLocationNew.coordinate
            let newCoordinates = newLocation.coordinate
            var area = [oldCoordinates, newCoordinates]
            let polyline = MKPolyline(coordinates: &area, count: area.count);
            mapView.addOverlay(polyline)
            

        }
    }
    

    @available(iOS 7.0, *)
    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer{
        if (overlay is MKPolyline){
            let pr = MKPolylineRenderer(overlay: overlay)
            pr.strokeColor = UIColor.redColor()
            pr.lineWidth = 5
            return pr
        }
        return MKPolylineRenderer()
    }
  
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("didFailWithError \(error.description)")
        let errorAlert = UIAlertView(title: "Error", message: "Failed to Get your location", delegate: nil, cancelButtonTitle: "Ok")
        errorAlert.show()
        
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
