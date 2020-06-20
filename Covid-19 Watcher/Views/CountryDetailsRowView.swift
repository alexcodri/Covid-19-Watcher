//
//  CountryDetailsView.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 21/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import SwiftUI

struct CountryDetailsRowView: View {
    
    var number: String = "Error"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    var body: some View {
        
        VStack{
            HStack{
                Text(self.name)
                    .font(.body)
                    .padding(5)
                Spacer()
                Text(self.number)
                    .font(.body)
                    .padding(5)
                    .foregroundColor(color)
                
            }
            Divider()
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

struct CountryDetailsRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailsRowView()
    }
}
