//
//  TotalDataView.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 21/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import SwiftUI

struct TotalDataView: View {
    
    var totalData: TotalDataModel
    
    var body: some View {
        VStack{
            HStack{
                TotalDataCard(number: totalData.confirmed.formatNumber(), name: "Confirmed")
                TotalDataCard(number: totalData.critical.formatNumber(), name: "Critical",color: .yellow)
                TotalDataCard(number: totalData.deaths.formatNumber(), name: "Deaths", color: .red)
            }//end of HStack
            HStack{
                TotalDataCard(number: String(format:"%.2f",totalData.fatalityRate)
                    , name: "Death %", color: .red)
                TotalDataCard(number: totalData.recovered.formatNumber(), name: "Recovered",color: .yellow)
                TotalDataCard(number: String(format: "%.2f", totalData.recoveredRate) , name: "Recovery %", color: .green)
            }//end of HStack
        }//end of VStack
        .frame(height: 170)
        .padding(10)
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: dummyTotalData)
    }
}
