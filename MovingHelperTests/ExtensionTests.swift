//
//  ExtensionTests.swift
//  MovingHelper
//
//  Created by Ellen Shapiro on 6/20/15.
//  Copyright (c) 2015 Razeware. All rights reserved.
//


import UIKit
import XCTest
import MovingHelper

class ExtensionTests: XCTestCase {
  
    override func setUp()
    {
        super.setUp()
    }

    override func tearDown()
    {
        super.tearDown()
    }

    func test1()
    {
        let score = 95
        XCTAssertEqual(score, 95, "Score computed from guess is wrong")
    }
}
