//
//  FavButton.swift
//  Landmarks
//
//  Created by Naïka Jean-Baptiste on 2024-05-05.
//

import SwiftUI

struct FavButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        }label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                            .labelStyle(.iconOnly)
                            .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavButton(isSet: .constant(true))
}
