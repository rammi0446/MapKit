//
//  LocationViewController.swift
//  MApKitExample
//
//  Created by MacStudent on 2018-11-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import CoreLocation

class LocationViewController: UIViewController, CLLocationManagerDelegate {

    
    // make variable location nmanager
    var manager:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //configure the variables
        manager = CLLocationManager()
        manager.delegate = self
        //how accurate do you want
        manager.desiredAccuracy = kCLLocationAccuracyBest
        // asking for permission
        manager.requestAlwaysAuthorization()
        // tell manager to get the loaction
        manager.startUpdatingLocation()
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
    @IBAction func getLocation(_ sender: Any) {
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("got a new location")
        if(locations.count == 0){
            print("error getting your location")
        }
        else{
            print(locations[0])
        }
    }
    
}
