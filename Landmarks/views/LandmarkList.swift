//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Naïka Jean-Baptiste on 2024-05-05.
//

import SwiftUI

struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showFavsOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {landmark in
            (!showFavsOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavsOnly){
                    Text("Show Favorites Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList().environment(ModelData())
}
