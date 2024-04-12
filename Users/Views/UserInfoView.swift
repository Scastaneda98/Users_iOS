//
//  UserInfoView.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import SwiftUI

struct UserInfoView: View {
    let user: User
    var body: some View {
        VStack(alignment: .leading) {
            UserInformationView(name: user.name, username: user.username)
            ContactInfoView(email: user.email, phone: user.phone, website: user.website)
            CompanyInfoView(company: user.company)
            LocationInfo(location: user.address)
        }
        
    }
}

#Preview {
    UserInfoView(user: User(id: 1, name: "Leanne Graham", username: "Bret", email: "Sincere@april.biz", address: Address(street: "Kulas Light", suite: "Apt. 556", city: "Gwenborough", zipcode: "92998-3874", geo: Geo(lat: "-37.3159", lng: "81.1496")), phone: "1-770-736-8031 x56442", website: "hildegard.org", company: Company(name: "Romaguera-Crona", catchPhrase: "Multi-layered client-server neural-net", bs: "harness real-time e-markets")))
}
