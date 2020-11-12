//
//  ContentView.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        return Text("hello_first_fragment".localized)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
