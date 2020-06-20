//
//  SearchbarView.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 21/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import SwiftUI

struct SearchbarView: View {
    
    @Binding var searchText: String
    
    
    var body: some View {
        
        HStack{
            TextField("Country...", text: $searchText)
                .padding()
        }//End of HStack
            .frame(height: 50)
            .background(Color("cardBackgroundColorGray"))
    }
}
