//
//  ContentView.swift
//  RemoteConfigExample
//
//  Created by Michelle Grover on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            GymsView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Gyms")
                }

            BoxersView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Boxers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
