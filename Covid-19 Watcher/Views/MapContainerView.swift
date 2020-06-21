//
//  MapContainerView.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 21/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import SwiftUI

struct MapContainerView: View {
    @ObservedObject var covidDataFetch = CovidDataFetchRequest()
    var body: some View {
        MapView(countryData: $covidDataFetch.allCountryData)
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
