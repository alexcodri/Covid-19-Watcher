//
//  CountryDetailsView.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 21/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import SwiftUI

struct CountryDetailsView: View {
    
    var countryData: TotalCountryData
    
    var body: some View {
        VStack{
            VStack{
                CountryDetailsRowView(number: countryData.confirmed.formatNumber(), name: "Confirmed")
                    .padding(.top)
                
                CountryDetailsRowView(number: countryData.critical.formatNumber(), name: "Critical", color: .yellow)
                
                CountryDetailsRowView(number: countryData.deaths.formatNumber(), name: "Deaths", color: .red)
                
                CountryDetailsRowView(number: String(format:"%.2f",countryData.fatalityRate), name: "Death %", color: .red)
                
                CountryDetailsRowView(number: countryData.recovered.formatNumber(), name: "Recovered", color: .green)
                
                CountryDetailsRowView(number: String(format:"%.2f",countryData.fatalityRate), name: "Recovery %", color: .green)
            }.background(Color("cardBackgroundColorGray"))
                .cornerRadius(8)
                .padding()
            Spacer()
            
        }
        .padding(.top, 50)
        .navigationBarTitle(countryData.countryName)
    }
    
}

struct CountryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailsView(countryData: dummyCountryData)
    }
}
