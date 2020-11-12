//
//  PaymentList.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import Foundation

struct PaymentList : Codable {
    var items: [PaymentItem] = [PaymentItem]()
    init(){}
}
