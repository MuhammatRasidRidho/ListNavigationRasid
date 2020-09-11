//
//  ContentView.swift
//  ListNavigationRasid
//
//  Created by Muhammat Rasid Ridho on 10/09/20.
//  Copyright © 2020 Muhammat Rasid Ridho. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        
        NavigationView {
        
            List(self.hikes, id: \.name) { hike in
                NavigationLink(destination: HIkeDetail(hike: hike)) {
                    HikeCell(hike: hike)
                }
            }
        .navigationBarTitle("Naik Gunung")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike :Hike
    
    var body: some View {
        HStack{
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(hike.name)
           //   Text("\(hike.miles) miles")
                Text(String(format: "%.2f", hike.miles))
            }
        }
    }
}
