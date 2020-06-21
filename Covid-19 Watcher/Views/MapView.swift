//
//  MapView.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 21/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    

    @Binding var countryData: [TotalCountryData]
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        var allAnnotations: [CoronaCaseAnnotation] = []
        
        for data in countryData{
            let title = data.countryName + "\nConfirmed "
                + data.confirmed.formatNumber() + "\nDeaths "
                + data.deaths.formatNumber()
            let coordinate = CLLocationCoordinate2D(latitude: data.latitude, longitude: data.longitude)
            allAnnotations.append(CoronaCaseAnnotation(title: title, coordinate: coordinate))
        }
        //
        uiView.annotations.forEach{ uiView.removeAnnotation($0)}
        uiView.addAnnotations(allAnnotations)
    }
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView()
    }
    
}

class CoronaCaseAnnotation: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String?, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }
}

