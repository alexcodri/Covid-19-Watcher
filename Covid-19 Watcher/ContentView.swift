//
//  ContentView.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 20/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView{
            RecentView().tabItem{
                Tab(imageName: "chart.bar", text: "Recents")
                }.tag(0)
            
            MapContainerView()
                .edgesIgnoringSafeArea(.vertical)
                .tabItem{
                Tab(imageName: "map", text: "Map")
            }.tag(1)
        }
    }
}

private struct Tab:View{
    let imageName: String
    let text: String
    var body: some View{
        VStack{
            Image(systemName: imageName)
            Text(text)
        }
    }
}
