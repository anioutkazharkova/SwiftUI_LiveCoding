//
//  InfoButtonView.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import SwiftUI

struct InfoButtonView: View {
    @State var image: String = "transfer"
    @State var title: String = "test"
    @State var subtitle: String = "test"
    var body: some View {
        HStack {
            Image(image).frame(width: 40, height: 40, alignment: .topLeading)
            VStack(alignment: .leading, spacing: 10) {
                Text(title).font(Font.system(size: 16))
                Text(subtitle).font(Font.system(size: 13)).foregroundColor(.gray)
            }
            Spacer()
            Image("disclosure").frame(width: 25, height: 25, alignment: .trailing)
        }
    }
}

struct InfoButtonView_Previews: PreviewProvider {
    static var previews: some View {
        InfoButtonView()
    }
}
