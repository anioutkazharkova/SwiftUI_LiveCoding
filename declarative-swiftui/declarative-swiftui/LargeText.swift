//
//  LargeText.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import SwiftUI

struct LargeText: View {
    @State var text: String = "sampe"
    var body: some View {
        VStack(alignment: .leading){
        Text(text).font(Font.bold(Font.system(size: 24))())
        }
    }
}

struct LargeText_Previews: PreviewProvider {
    static var previews: some View {
        LargeText()
    }
}
