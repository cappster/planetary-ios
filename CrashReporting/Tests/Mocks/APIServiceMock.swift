//
//  APIServiceMock.swift
//  
//
//  Created by Martin Dutra on 24/11/21.
//

import Foundation
@testable import CrashReporting

class APIServiceMock: APIService {

    var identified = false
    var crashed = false
    var forgot = false
    var recorded = false

    func identify(identity: Identity) {
        identified = true
    }

    func forget() {
        forgot = true
    }

    func record(_ message: String) {
        recorded = true
    }

    func report(error: Error, metadata: [AnyHashable: Any]?, appLog: String?, botLog: String?) {
        crashed = true
    }
}
