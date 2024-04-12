//
//  ErrorView.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import SwiftUI

struct ErrorView: View {
    let message: String
    var body: some View {
        Text(message)
            .foregroundStyle(.red)
    }
}
