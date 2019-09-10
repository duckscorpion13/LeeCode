//
//  LeeCodeTests.swift
//  LeeCodeTests
//
//  Created by DerekYang on 2019/9/10.
//  Copyright © 2019 DKY. All rights reserved.
//

import XCTest
@testable import LeeCode

class LeeCodeTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
//		let sum = TwoSum()
//		print(sum.onePassHash([1,3,5,7,9], 12))
//		let lon = LongSubNoRepeat()
//		print(lon.slidWindowOpt("hfdshfuhnhhhfsdgghdf"))
	
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
	func testOnePassHash() {
		let sum = TwoSum()
		let result = sum.onePassHash([1,3,5,7,9], 12)
//		let lon = LongSubNoRepeat()
//		print(lon.slidWindowOpt("hfdshfuhnhhhfsdgghdf"))
		XCTAssertEqual(result, [0,3], "dfdsfdsffdf")
	}
	
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
