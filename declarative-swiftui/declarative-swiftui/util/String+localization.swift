//
//  String+localization.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import Foundation

extension String {
    func value(forKey key: String) -> String  {
        let bundle = Bundle.main
        let value = NSLocalizedString(key, tableName: nil,
                                      bundle: bundle, value: "", comment: "")
        return value
    }
    
    var localized: String {
        return self.value(forKey: self)
    }
}
