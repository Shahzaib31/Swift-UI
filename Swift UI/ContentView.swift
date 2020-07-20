//
//  ContentView.swift
//  Swift UI
//
//  Created by Shahzaib Kafayit on 7/17/20.
//  Copyright © 2020 Shahzaib Kafayit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    var body: some View {
        NavigationView {
            List {
                storiesView()
                HStack {
                    TextField("What's in your mind?", text: $name)
                }
                ForEach(users, id: \.id) { user in
                    PostView()
                }
                AdvertisementView()
                
            }.navigationBarTitle("Groups")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
