//
//  KeychainTests.swift
//  KeychainTests
//
//  Created by Yanko Dimitrov on 2/6/16.
//  Copyright © 2016 Yanko Dimitrov. All rights reserved.
//

import XCTest
@testable import Keychain

class KeychainTests: XCTestCase {
    
    func testErrorForStatusCode() {
        
        let keychain = Keychain()
        
        let expectedErrorCode = Int(errSecItemNotFound)
        let error = keychain.errorForStatusCode(errSecItemNotFound)
        
        XCTAssertEqual(error.code, expectedErrorCode, "Should return error with status code")
    }
}
