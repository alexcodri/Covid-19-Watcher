//
//  TotalCountryDataModel.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 21/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import Foundation

struct TotalCountryData {
    
    let countryName: String
    let confirmed: Int64
    let critical: Int64
    let deaths: Int64
    let recovered: Int64
    let longitude: Double
    let latitude: Double
    
    var fatalityRate: Double{
        return (100 * Double(deaths)) / Double(confirmed)
    }
    var recoveredRate: Double{
         return (100 * Double(recovered)) / Double(confirmed)
     }
}

let dummyCountryData = TotalCountryData(countryName: "Dummy", confirmed: 200, critical: 200, deaths: 200, recovered: 200, longitude: 200.0, latitude: 200.0)
