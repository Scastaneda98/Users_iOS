//
//  UsersViewModel.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import Foundation

class UsersViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    init() {
        getUsers()
    }
    
    private func getUsers() {
        isLoading = true
        errorMessage = nil
        APIConfig.shared.fetchData(endpoint: "users", method: .get) { (result: Result<[User], APIError>) in
            switch result {
            case .success(let usersResponse):
                DispatchQueue.main.async {
                    self.users = usersResponse
                    self.isLoading = false
                }
                
            case .failure(_):
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.errorMessage = "Failed to load users. Please try again later."
                }
            }
        }
    }
}
