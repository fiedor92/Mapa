//
//  InterfaceController.swift
//  Mapa WatchKit Extension
//
//  Created by appacmp on 26/07/15.
//  Copyright (c) 2015 Maciej Fiedorowicz. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var location = CLLocationCoordinate2D(latitude: 54.44321, longitude: 18.56)
    
    
    @IBOutlet weak var map: WKInterfaceMap!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        let location = CLLocationCoordinate2D(latitude: 54.44321, longitude: 18.56)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        let region = MKCoordinateRegion(center: location, span: span)
        map.setRegion(region)
        
        map.addAnnotation(location, withPinColor: WKInterfaceMapPinColor.Green)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    

    @IBAction func zoomInMap(value: Float) {
        let degrees:CLLocationDegrees = CLLocationDegrees(10-value) / 10
        let span = MKCoordinateSpanMake(degrees, degrees)
        let region = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(region)
    }
    
    func updateMap(){
        
    }

}
