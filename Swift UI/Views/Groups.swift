//
//  Groups.swift
//  Swift UI
//
//  Created by Shahzaib Kafayit on 6/9/20.
//  Copyright © 2020 Shahzaib Kafayit. All rights reserved.
//

import SwiftUI

struct storiesView: View {
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Stories")
                HStack (alignment: .center, spacing: 15.0){
                    ForEach(users, id: \.id) { user in
                        VStack (alignment: .center){
                            Image(user.image)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 60.0, height: 60.0)
                                .clipped()
                            Text(user.username).font(.subheadline)
                        }
                    }
                }
            }
        }
    }
}

struct storiesViewWithRectangle: View {
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack (alignment: .center, spacing: 15.0){
                    ForEach(users, id: \.id) { user in
                        VStack (alignment: .center){
                            Image(user.image)
                                .resizable()
                            
                                .frame(width: 100.0, height: 100.0)
                                .clipped()
                            Text(user.username).font(.subheadline)
                        }
                    }
                }
            }
        }
    }
}

struct PostView: View {
    @State var showActionSheet = false
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            
            HStack {
                Image("abc")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60.0, height: 60.0)
                    .clipped()
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Annie Marie").font(.headline)
                    Text("Posted 3 hrs ago").font(.subheadline)
                }.padding(.leading, 8)
                
            }.padding(.leading, 16).padding(.top, 16)
            
            Text("A Million-Mile Battery From China Could Power Your Electric Car").lineLimit(nil).padding(.leading, 16).padding(.trailing, 32)
            Image("car")
                .resizable()
                .aspectRatio(contentMode: .fill)
            HStack (alignment: .center, spacing: 15.0){
                Button(" Like") {
                    
                }.font(.headline)
                Button(action: { self.showActionSheet.toggle() }) { Text("Comments (4)").font(.headline) }
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(title: Text("Change background"), message: Text("Select a new color"), buttons: [
                            .default(Text("Add Comment")) { },
                            .default(Text("Green")) {  },
                            .default(Text("Blue")) {  },
                            .cancel()
                        ])
                }
                Button("Share") {
                    
                }.font(.headline)
            }
            
        }.padding(.leading, -20).padding(.trailing, -20).padding(.top, -8)
    }
}

struct AdvertisementView: View {
    @State var showActionSheet = false
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            
            HStack {
                Image("Burger")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60.0, height: 60.0)
                    .clipped()
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Food Panda").font(.headline)
                    Text("Dilvery Online").font(.subheadline)
                }.padding(.leading, 8)
                
            }.padding(.leading, 16).padding(.top, 16)
            
            Text("Yummy Pizza").lineLimit(nil).padding(.leading, 16).padding(.trailing, 32)
            Image("Burger")
                .resizable()
                .aspectRatio(contentMode: .fill)
            HStack (alignment: .center, spacing: 15.0){
                Button(" Like") {
                    
                }.font(.headline)
                Button(action: { self.showActionSheet.toggle() }) { Text("Comments (4)").font(.headline) }
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(title: Text("Change background"), message: Text("Select a new color"), buttons: [
                            .default(Text("Add Comment")) { },
                            .default(Text("Green")) {  },
                            .default(Text("Blue")) {  },
                            .cancel()
                        ])
                }
                Button("Share") {
                    
                }.font(.headline)
            }
            
        }.padding(.leading, -20).padding(.trailing, -20).padding(.top, -8)
    }
}
