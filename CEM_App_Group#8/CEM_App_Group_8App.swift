//
//  CEM_App_Group_8App.swift
//  CEM_App_Group#8
//
//  Created by 서정원 on 2023/05/09.
//

import SwiftUI

@main
struct CEM_App_Group_8App: App {
    @StateObject var structures = Structures()
    var body: some Scene {
        WindowGroup {
            TabView {
                ScrollView {
                    ForEach(structures.structures, id: \.self) { structure in
                        ContentView(structure: structure)
                        Divider()
                    }
                }
                .padding(.top, 1)
                .tabItem {
                    Image(systemName: "paperplane")
                    Text("Engineering Marvels")
                }
                NavigationView {
                    MapView()
                }
                .tabItem {
                    Image(systemName: "camera")
                    Text("Global Map")
                }
            }
            .environmentObject(structures)
        }
    }
}

