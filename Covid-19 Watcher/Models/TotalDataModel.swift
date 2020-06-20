//
//  Model.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 21/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import Foundation

struct TotalDataModel {
    
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    
    var fatalityRate: Double{
        return (100 * Double(deaths)) / Double(confirmed)
    }
    var recoveredRate: Double{
         return (100 * Double(recovered)) / Double(confirmed)
     }
}

    let dummyTotalData = TotalDataModel(confirmed: 200, critical: 200, deaths: 200, recovered: 200)
    
