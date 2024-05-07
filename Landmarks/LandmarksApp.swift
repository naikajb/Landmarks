//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Naïka Jean-Baptiste on 2024-05-05.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

       var body: some Scene {
           WindowGroup {
               ContentView()
                   .environment(modelData)
           }
       }
}
