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
            }.navigationTitle("Users")
        }
    }
}

