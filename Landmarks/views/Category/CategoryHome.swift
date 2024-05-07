//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Naïka Jean-Baptiste on 2024-05-06.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    
    
    var body: some View {
        NavigationSplitView{
            List {
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(modelData.features, id: \.self){
                            landmark in
                            VStack{
                                landmark.image.resizable()
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .frame(width: 200, height: 200)
                                    
                                Text(landmark.name)
                                
                            }
                        }
                        
                    }
                }//.listRowInsets(EdgeInsets())
                
                //                modelData.features[0].image
                //                    .resizable()
                //                    .scaledToFill()
                //                    .frame(height: 200)
                //                    .clipped()
                
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    //Text(key)
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }.listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .foregroundStyle(Color(.black))
            .toolbar{
                Button{
                    showingProfile.toggle()
                } label:{
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile){
                ProfileHost().environment(modelData)
            }
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    CategoryHome().environment(ModelData())
}
