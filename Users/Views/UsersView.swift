//
//  UsersView.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import SwiftUI

struct UsersView: View {
    @StateObject var usersViewModel = UsersViewModel()
    var body: some View {
        Group {
            if usersViewModel.isLoading {
                LoadingView()
            } else if let errorMessage = usersViewModel.errorMessage {
                ErrorView(message: errorMessage)
            } else if usersViewModel.users.isEmpty {
                EmptyListView()
            } else {
                UserListView(users: usersViewModel.users)
            }
         }
    }
}

#Preview {
    UsersView()
}
