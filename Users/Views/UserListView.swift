//
//  UserListView.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import SwiftUI

struct UserListView: View {
    var users: [User]
    
    var body: some View {
        NavigationStack {
            List(users) { user in
                NavigationLink(destination: UserDetailView(userID: user.id)) {
                    UserListItemView(user: user)
                }
            }.navigationTitle("Users list")
        }
    }
}

#Preview {
    UserListView(users: [User(id: 1, name: "", username: "Bret", email: "Sincere@april.biz", address: Address(street: "Kulas Light", suite: "Apt. 556", city: "Gwenborough", zipcode: "92998-3874", geo: Geo(lat: "-37.3159", lng: "81.1496")), phone: "1-770-736-8031 x56442", website: "hildegard.org", company: Company(name: "Romaguera-Crona", catchPhrase: "Multi-layered client-server neural-net", bs: "harness real-time e-markets")),User(id: 2, name: "Leanne Graham", username: "Bret", email: "Sincere@april.biz", address: Address(street: "Kulas Light", suite: "Apt. 556", city: "Gwenborough", zipcode: "92998-3874", geo: Geo(lat: "-37.3159", lng: "81.1496")), phone: "1-770-736-8031 x56442", website: "hildegard.org", company: Company(name: "Romaguera-Crona", catchPhrase: "Multi-layered client-server neural-net", bs: "harness real-time e-markets"))])
}

