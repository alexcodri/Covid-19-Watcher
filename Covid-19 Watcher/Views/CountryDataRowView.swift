//
//  CountryDataRow.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 21/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import SwiftUI

struct CountryDataRowView: View {
    
    
    var countryData: TotalCountryData
    
    var body: some View{
        HStack{
            Text(countryData.countryName)
                .fontWeight(.medium)
                .font(.subheadline)
                .frame(width: 100, alignment: .leading)
                .lineLimit(2)
            
            Spacer()
            
            Text(countryData.confirmed.formatNumber())
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)
            
            Spacer()
            
            Text(countryData.deaths.formatNumber())
                .font(.subheadline)
                .frame(width: 60,height: 40, alignment: .center)
                .padding(.leading,5)
                .foregroundColor(.red)
            
            Spacer()
            
            Text(countryData.recovered.formatNumber())
                .font(.subheadline)
                .frame(width: 60,height: 40, alignment: .center)
                .foregroundColor(.green)
            
        }
    }
}

struct CountryDataRow_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: dummyCountryData)
    }
}
