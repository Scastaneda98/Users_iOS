//
//  LocationInfo.swift
//  Users
//
//  Created by Santiago Castaneda on 12/04/24.
//

import SwiftUI
import MapKit

struct LocationInfo: View {
    let location: Address
    
    var body: some View {
        GroupBox(label: Text("Loaction"), content: {
            VStack(alignment: .center) {
                HStack {
                    Text("City:")
                    Text(location.city)
                }
                HStack {
                    Text("Street:")
                    Text(location.street)
                }
                HStack {
                    Text(location.suite)
                }
                HStack {
                    Text("zip code:")
                    Text(location.zipcode)
                }
                Map {
                    Marker("Location", coordinate: CLLocationCoordinate2D(latitude: Double(location.geo.lat)!, longitude: Double(location.geo.lng)!))
                }
            }
        }).padding(.horizontal)
    }
}

#Preview {
    LocationInfo(location: Address(street: "Kulas Light", suite: "Apt. 556", city: "Gwenborough", zipcode: "92998-3874", geo: Geo(lat: "-37.3159", lng: "81.1496")))
}
