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
        GroupBox("Company") {
            VStack(alignment: .leading) {
                Text(company.name)
                Text(company.catchPhrase)
                Text(company.bs)
            }
        }.padding(.horizontal)
    }
}

