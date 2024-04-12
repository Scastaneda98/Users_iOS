//
//  UserDetailViewModelTests.swift
//  UsersTests
//
//  Created by Santiago Castaneda on 12/04/24.
//

import XCTest
@testable import Users

final class UserDetailViewModelTests: XCTestCase {

    var userDetailViewModel: UserDetailViewModel!

    override func setUpWithError() throws {
        userDetailViewModel = UserDetailViewModel()
    }

    override func tearDownWithError() throws {
        userDetailViewModel = nil
    }
    
    func testSuccefulUserLoad() {
        let expectation = XCTestExpectation(description: "Users loaded successfully")
        
        userDetailViewModel.user = User(id: 1, name: "Leanne Graham", username: "Bret", email: "Sincere@april.biz", address: Address(street: "Kulas Light", suite: "Apt. 556", city: "Gwenborough", zipcode: "92998-3874", geo: Geo(lat: "-37.3159", lng: "81.1496")), phone: "1-770-736-8031 x56442", website: "hildegard.org", company: Company(name: "Romaguera-Crona", catchPhrase: "Multi-layered client-server neural-net", bs: "harness real-time e-markets"))
        userDetailViewModel.isLoading = false
        
        XCTAssertNotNil(userDetailViewModel.user)
        XCTAssertFalse(userDetailViewModel.isLoading)
        
        expectation.fulfill()
        wait(for: [expectation], timeout: 1.0)
    }

}
