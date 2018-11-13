//
//  ViewController.swift
//  MApKitExample
//
//  Created by MacStudent on 2018-11-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

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
        
        
        // craete a pin
        let pin = MKPointAnnotation()
        //set the latitude and longitude
        pin.coordinate = x
    
        // add a information on popup
        pin.title = " here is some information "
        
        //show the pin on the map
        self.mapkit.addAnnotation(pin)
        
        // second pin
        let pin2 = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2DMake(43.65644, -79.3807)
        pin.title = "second pin"
        self.mapkit.addAnnotation(pin2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

