//
//  ContactInfoView.swift
//  Users
//
//  Created by Santiago Castaneda on 12/04/24.
//

import SwiftUI

struct ContactInfoView: View {
    let email: String
    let phone: String
    let website: String
    
    var body: some View {
        
        GroupBox(label: Text("Contact information"), content: {
            VStack() {
                Text(email)
                Text(phone)
                Text(website)
            }
        }).padding(.horizontal)
    }
}

#Preview {
    ContactInfoView(email: "Sincere@april.biz", phone: "1-770-736-8031 x56442", website: "hildegard.org")
}
