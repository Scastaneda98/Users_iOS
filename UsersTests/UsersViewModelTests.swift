//
//  UsersViewModelTests.swift
//  UsersTests
//
//  Created by Santiago Castaneda on 12/04/24.
//

import XCTest
@testable import Users

final class UsersViewModelTests: XCTestCase {
    var usersViewModel: UsersViewModel!

    override func setUpWithError() throws {
        usersViewModel = UsersViewModel()
    }

    override func tearDownWithError() throws {
        usersViewModel = nil
    }
    
    func testSuccefulUsersLoad() {
        let expectation = XCTestExpectation(description: "Users loaded successfully")
        
        usersViewModel.users = [User(id: 1, name: "Leanne Graham", username: "Bret", email: "Sincere@april.biz", address: Address(street: "Kulas Light", suite: "Apt. 556", city: "Gwenborough", zipcode: "92998-3874", geo: Geo(lat: "-37.3159", lng: "81.1496")), phone: "1-770-736-8031 x56442", website: "hildegard.org", company: Company(name: "Romaguera-Crona", catchPhrase: "Multi-layered client-server neural-net", bs: "harness real-time e-markets"))]
        usersViewModel.isLoading = false
        
        XCTAssertEqual(usersViewModel.users.count, 1)
        XCTAssertFalse(usersViewModel.isLoading)
        
        expectation.fulfill()
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testEmptyOrNullUserData() {
        let expectation = XCTestExpectation(description: "Users loaded with empty or null data")
        
        usersViewModel.users = [User(id: 1, name: "", username: "Bret", email: "", address: Address(street: "Kulas Light", suite: "Apt. 556", city: "Gwenborough", zipcode: "92998-3874", geo: Geo(lat: "-37.3159", lng: "81.1496")), phone: "1-770-736-8031 x56442", website: "", company: Company(name: "Romaguera-Crona", catchPhrase: "Multi-layered client-server neural-net", bs: "harness real-time e-markets"))]
        usersViewModel.validateUserInformation(from: &usersViewModel.users)
        usersViewModel.isLoading = false
        
        XCTAssertEqual(usersViewModel.users.count, 0)
        XCTAssertFalse(usersViewModel.isLoading)
        
        expectation.fulfill()
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testDecodingError() {
        let expectation = XCTestExpectation(description: "Decoding error")
        
        usersViewModel.errorMessage = "Failed to decode data"
        usersViewModel.isLoading = false
        
        XCTAssertEqual(usersViewModel.errorMessage, "Failed to decode data")
        XCTAssertFalse(usersViewModel.isLoading)
        
        expectation.fulfill()
        wait(for: [expectation], timeout: 1.0)
    }

}
