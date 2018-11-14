//
//  SearchViewController.swift
//  MApKitExample
//
//  Created by MacStudent on 2018-11-14.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import MapKit
class SearchViewController: UIViewController {

    @IBOutlet weak var txtSearch: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    @IBAction func btnSearch(_ sender: Any) {
        print("search button pressed")
        
        // get the keyword from the user interface
        let query = txtSearch.text!
        //send the keyword to apple
        let searchRequest = MKLocalSearchRequest()
        searchRequest.naturalLanguageQuery = query
        
        let coordinate = CLLocationCoordinate2DMake(43.6532,-79.3832)
        let span = MKCoordinateSpanMake(0.5, 0.5)
        let r = MKCoordinateRegionMake(coordinate, span)
        
        searchRequest.region = r
        
        let search = MKLocalSearch(request: searchRequest)
        search.start { (response, error) in
            //put code here
            
            //what do you want to do with the search result?
            
            //Examples - show it in the terminal! show it in th ui! your choice!
            
            //print(response?.mapItems)
            var places = response?.mapItems
            for x in places!{
                print("name : \(x.name)")
                 print("name : \(x.phoneNumber)")
                 print("name : \(x.placemark.coordinate.latitude)")
                print("name : \(x.placemark.coordinate.longitude)")
            }
        }
        //wait for apple the results
        
        //do something with the results
        
    }
    
}
