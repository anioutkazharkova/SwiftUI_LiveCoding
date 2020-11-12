//
//  SegmentButton.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import SwiftUI

struct SegmentButton: View {
    @State var text: String = "text"
    @State var isSelected: Bool = true
    
    var body: some View {
        VStack {
        Text(self.text)
            .font(Font.bold(Font.system(size: 16))())
            .foregroundColor(self.isSelected ? .black : .gray)
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 50, maxHeight: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }.fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
    }
}

struct SegmentButton_Previews: PreviewProvider {
    static var previews: some View {
        SegmentButton()
    }
}
