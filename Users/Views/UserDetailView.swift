//
//  UserDetailView.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import SwiftUI

struct UserDetailView: View {
    let userID: Int
    @ObservedObject var userDetailViewModel = UserDetailViewModel()
    var body: some View {
        Group {
            if let user = userDetailViewModel.user {
                UserInfoView(user: user)
            } else if userDetailViewModel.isLoading {
                LoadingView()
            } else {
                ErrorView(message: "User not found")
            }
        }
        .onAppear{
            userDetailViewModel.getUserById(id: userID)
        }
    }
}

#Preview {
    UserDetailView(userID: 1)
}
