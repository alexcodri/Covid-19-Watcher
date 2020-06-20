//
//  RecentView.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 21/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidDataFetch = CovidDataFetchRequest()
    @State var searchText: String = ""
    @State var isSearchVisible: Bool = false
    var body: some View {
        
        NavigationView{
            VStack{
                
                if isSearchVisible{
                    SearchbarView(searchText: $searchText)
                }
                
                TotalDataView(totalData: covidDataFetch.totalData)
                ListHeaderView()
                List{
                    ForEach(covidDataFetch.allCountryData.filter {
                        self.searchText.isEmpty ?
                            true : $0.countryName.lowercased().contains(self.searchText.lowercased())
                    }, id: \.countryName){ countryData in
                        CountryDataRowView(countryData: countryData)
                    }
                }
            }// end of  vstack
                .navigationBarTitle("Recent world data", displayMode: .inline)
                .navigationBarItems(
                    trailing:
                Button(
                    action: {
                        self.isSearchVisible.toggle()
                        
                        if !self.isSearchVisible{
                            self.searchText = ""
                        }
                }, label: {
                    Image(systemName: "magnifyingglass")
                }))
        } // end of navi stack
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
