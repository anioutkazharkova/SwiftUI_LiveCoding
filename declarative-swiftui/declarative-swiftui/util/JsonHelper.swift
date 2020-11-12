//
//  JsonHelper.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import Foundation

class JsonHelper {
    static let shared = JsonHelper()
    
    func loadJson<T:Codable>(filename fileName: String, type: T.Type) -> T? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(T.self, from: data)
                return jsonData as? T
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}
