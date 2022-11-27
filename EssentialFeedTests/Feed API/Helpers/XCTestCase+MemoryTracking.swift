//
//  XCTestCase+MemoryTracking.swift
//  EssentialFeedTests
//
//  Created by Andrei Atrakhimovich on 27.11.22.
//

import XCTest

extension XCTestCase {
    
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should be deallocated. Potencial memory leak.", file: file, line: line)
        }
    }
}
