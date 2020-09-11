//
//  HIkeDetail.swift
//  ListNavigationRasid
//
//  Created by Muhammat Rasid Ridho on 11/09/20.
//  Copyright © 2020 Muhammat Rasid Ridho. All rights reserved.
//

import SwiftUI

struct HIkeDetail: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
            .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill :  .fit)
                .onTapGesture {
                    withAnimation {
                    self.zoomed.toggle()
                    }
            }
            
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
        }.navigationBarTitle(Text (hike.name), displayMode: .inline)
    }
}

struct HIkeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HIkeDetail(hike: Hike(name: "Gunung Apa", imageURL: "bro", miles: 10.0))
    }
}
