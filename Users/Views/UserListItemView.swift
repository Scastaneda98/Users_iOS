//
//  UserListItemView.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import SwiftUI

struct UserListItemView: View {
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(user.name)
                .font(.title)
            Text(user.email)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.blue)
            Text(user.website)
                .font(.body)
                .foregroundStyle(.blue)
        }
    }
}

