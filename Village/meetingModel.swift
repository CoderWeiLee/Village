//
//  meetingModel.swift
//  Village
//
//  Created by 李伟 on 2021/1/18.
//

import Foundation
class meetingModel: NSObject {
    var name: String!
    var address: String!
    var state: String!
    var time: String!
    init(_ name: String, _ address: String, _ state: String, _ time: String) {
        self.name = name
        self.address = address
        self.state = state
        self.time = time
    }
}
