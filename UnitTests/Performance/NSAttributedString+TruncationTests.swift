//
//  NSAttributedString+TruncationTests.swift
//  UnitTests
//
//  Created by Matthew Lorentz on 2/1/22.
//  Copyright © 2022 Verse Communications Inc. All rights reserved.
//

import XCTest

class NSAttributedStringTruncationTests: XCTestCase {

  
    func testTruncation() throws {
        let post = KeyValueFixtures.bigTextPost
        let bigText = try XCTUnwrap(post.value.content.post?.text)
        
        self.measure {
            let _ = NSAttributedString(string: bigText).truncating(with: NSAttributedString(string: "See more"), settings: TruncationSettings(over: 10, to: 8), width: 300)
        }
    }
}
