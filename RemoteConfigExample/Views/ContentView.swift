//
//  ContentView.swift
//  RemoteConfigExample
//
//  Created by Michelle Grover on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    let isFeatureEnabled:Bool
        init() {
            if let url = Bundle.main.url(forResource: "RemoteConfig", withExtension: "plist"),
               let data = try? Data(contentsOf: url),
               let plist = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil),
               let dict = plist as? [String: Any] {
                isFeatureEnabled = (dict["featureXEnabled"] as? Bool)!
            } else {
                isFeatureEnabled = false
            }
        }
    var body: some View {
        TabView {
            if isFeatureEnabled == true {
                GymsListView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Gyms")
                    }
            } else {
                GymsView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Gyms")
                    }
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
