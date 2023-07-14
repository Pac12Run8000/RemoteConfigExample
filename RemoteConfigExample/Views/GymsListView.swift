//
//  GymsListView.swift
//  RemoteConfigExample
//
//  Created by Michelle Grover on 7/13/23.
//

import SwiftUI

struct GymsListView: View {
    let gyms = ["Kings", "Oakland Fight Camp", "Dimitri's Gym", "Pacific Ring Sports", "Island City Boxing"]

    var body: some View {
        List(gyms, id: \.self) { gym in
            Text(gym)
        }
        .navigationTitle("Gyms")
    }
}
