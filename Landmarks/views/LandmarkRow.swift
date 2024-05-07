//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Naïka Jean-Baptiste on 2024-05-05.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark


        var body: some View {
            HStack {
                landmark.image
                    .resizable()
                    .frame(width: 50, height: 50)
                Text(landmark.name)

                Spacer()
                
                if landmark.isFavorite {
                    Image(systemName: "star.fill")
                        .foregroundColor(.blue)
                }
            }
        }
}

#Preview {
    let landmarks = ModelData().landmarks
       return Group {
           LandmarkRow(landmark: landmarks[0])
           LandmarkRow(landmark: landmarks[1])
       }
}
