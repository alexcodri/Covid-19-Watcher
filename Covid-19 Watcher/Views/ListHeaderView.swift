//
//  ListHeaderView.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 21/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    
    
    
    var body: some View {
        
        HStack{
            Text("Country")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 100, alignment: .leading)
                .padding(.leading,10)
            
            Spacer()

            Text("Confirmed")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)
            
            Spacer()

            Text("Deaths").fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 65,height: 40, alignment: .trailing)

            
            Spacer()
            
            Text("Recovered").fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.trailing,12)
        }.background(Color.gray)
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView()
    }
}
