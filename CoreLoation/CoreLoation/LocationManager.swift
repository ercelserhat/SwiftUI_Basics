//
//  LocationManager.swift
//  CoreLoation
//
//  Created by Serhat on 16.10.2023.
//

import Foundation
import CoreLocation
import CoreLocationUI

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject{
    
    var clm = CLLocationManager()
    @Published var konum = CLLocation()
    
    override init(){
        super.init()
        clm.desiredAccuracy = kCLLocationAccuracyBest
        clm.requestWhenInUseAuthorization()
        clm.startUpdatingLocation()
        clm.delegate = self
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        konum = locations[locations.count - 1]
    }
    
}
