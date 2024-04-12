//
//  UserDetailViewModel.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import Foundation

class UserDetailViewModel: ObservableObject {
    @Published var user: User?
    @Published var isLoading: Bool = false
    
    init() {
    }
    
    func getUserById(id: Int) {
        isLoading = true
        APIConfig.shared.fetchData(endpoint: "users/\(id)", method: .get) { (result: Result<User, APIError>) in
            switch result {
            case .success(let user):
                self.user = user
                self.isLoading = false
            case .failure(_):
                self.isLoading = false
            }
        }
    }
}
