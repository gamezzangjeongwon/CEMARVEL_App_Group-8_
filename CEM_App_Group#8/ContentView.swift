//
//  ContentView.swift
//  CEM_App_Group#8
//
//  Created by 서정원 on 2023/05/09.
//

import SwiftUI
struct ContentView: View {
    let structure: Structure
    var body: some View {
        ScrollView {
            Image(structure.picture)
                .resizable()
                .scaledToFit()
            Text(structure.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.bottom, 1)
            
            Text(structure.country)
                .font(.title)
                .foregroundColor(.secondary)
                .padding(.bottom, 5)
            
            Text(structure.description)
                .padding(.horizontal)
        }
        .navigationTitle("Engineering Marvels")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(structure: Structure.exampleStructure)
        }
    }
}
