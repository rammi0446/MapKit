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
        // Do any additional setup after loading the view, typically from a nib.
        let x = MKCoordinateRegionMake(<#T##centerCoordinate: CLLocationCoordinate2D##CLLocationCoordinate2D#>, <#T##span: MKCoordinateSpan##MKCoordinateSpan#>)
        let zoom = MKCoordinateSpanMake(<#T##latitudeDelta: CLLocationDegrees##CLLocationDegrees#>, <#T##longitudeDelta: CLLocationDegrees##CLLocationDegrees#>)
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

