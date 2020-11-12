//
//  PaymentItem.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import Foundation

enum PaymentType: String, Codable {
    case prime = "PRIME"
    case transaction = "TRANSACTION"
}

struct PaymentItem:Codable {
    let title: String
    let subtitle: String
    let description: String
    let type: PaymentType
}
