//
//  CompanyInfoView.swift
//  Users
//
//  Created by Santiago Castaneda on 12/04/24.
//

import SwiftUI

struct CompanyInfoView: View {
    let company: Company
    
    var body: some View {
        GroupBox(label: Text("Company"), content: {
            VStack() {
                Text(company.name)
                Text(company.catchPhrase)
                Text(company.bs)
            }
        }).padding(.horizontal)
    }
}

