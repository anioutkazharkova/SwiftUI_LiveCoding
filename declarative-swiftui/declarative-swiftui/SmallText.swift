//
//  SmallText.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import SwiftUI

struct SmallText: View {
    @State var text: String = "sample"
    var body: some View {
        Text(text).font(Font.system(size: 13)).foregroundColor(.gray)
    }
}

struct SmallText_Previews: PreviewProvider {
    static var previews: some View {
        SmallText()
    }
}
