//
//  BoxersView.swift
//  RemoteConfigExample
//
//  Created by Michelle Grover on 7/13/23.
//

import SwiftUI
import MapKit

struct BoxersView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.7652, longitude: -122.2416),
            span: MKCoordinateSpan(latitudeDelta: 0.10, longitudeDelta: 0.10)
        )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}
