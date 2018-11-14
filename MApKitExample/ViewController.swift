//
//  ViewController.swift
//  MApKitExample
//
//  Created by MacStudent on 2018-11-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    
    @IBOutlet weak var mapkit: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //example 1 : sho
        // Do any additional setup after loading the view, typically from a nib.
        let x = CLLocationCoordinate2DMake(43.6532, -79.3832)
        
        //pick a zoom level
        let y = MKCoordinateSpanMake(0.1, 0.1)
        
        //set the region property
        let z = MKCoordinateRegionMake(x, y)
        self.mapkit.setRegion(z, animated: true)
        
        
        // example 2
        // create a first pin
        let pin = MKPointAnnotation()
        //set the latitude and longitude
        pin.coordinate = x
        // add a information on popup
        pin.title = " here is some information "
        //show the pin on the map
        self.mapkit.addAnnotation(pin)
        
        // second pin
        let pin2 = MKPointAnnotation()
        pin2.coordinate = CLLocationCoordinate2DMake(43.65644, -79.3807)
        pin2.title = "second pin"
        self.mapkit.addAnnotation(pin2)
        
        
        //example 3 draw line
       // ==========================================
       // create coordinates for your LINE
        mapkit.delegate = self
        //CN tower
        let pos1 = CLLocationCoordinate2DMake(43.6426, -79.3871)
        //Lambton
        let pos2 = CLLocationCoordinate2DMake(43.773738, -79.335531)
       // put these coordinates in an array
         var locations = [pos1,pos2]
       // create an MKPoliline object
        let polyline = MKPolyline(coordinates: &locations, count: locations.count)
        
        mapkit.add(polyline)
    }
    
    //Mark: function to draw polyline
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if(overlay is MKPolyline)
        {
            let r = MKPolylineRenderer(overlay: overlay)
            r.strokeColor = UIColor.red // set the color on the line
            r.lineWidth = 4
            return r
        }
        return MKOverlayRenderer()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //zoom out
    @IBAction func ZoomOut(_ sender: Any) {
        print("zoom out pressed")
        var r = mapkit.region
        r.span.latitudeDelta = r.span.latitudeDelta * 2
        r.span.longitudeDelta = r.span.longitudeDelta * 2
        self.mapkit.setRegion(r, animated: true)
        
    }
    
    //zoom in
    @IBAction func ZoomIn(_ sender: Any) {
         print("zoom in pressed")
        var r = mapkit.region
        r.span.latitudeDelta = r.span.latitudeDelta / 2
         r.span.longitudeDelta = r.span.longitudeDelta / 2
         self.mapkit.setRegion(r, animated: true)
        
        
        
    }
    
    

}

