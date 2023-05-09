//
//  MapView.swift
//  CEM_App_Group#8
//
//  Created by 서정원 on 2023/05/09.
//

import MapKit
import SwiftUI
struct MapView: View {
    @EnvironmentObject var structures: Structures
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.85840, longitude: 2.29451),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: structures.structures) { structure in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: structure.latitude, longitude: structure.longitude)) {
                NavigationLink(destination: ContentView(structure: structure)) {
                    Image(structure.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
            }
        }
        .navigationTitle("World Map")
    }
}
