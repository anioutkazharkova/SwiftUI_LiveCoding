//
//  SegmentView.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import SwiftUI

struct SegmentView: View {
    @State var selectedIndex: Int = 0
    
    var body: some View {
        HStack {
            SegmentButton(text: "Профиль", isSelected: selectedIndex == 0)
            SegmentButton(text: "Настройки", isSelected: selectedIndex == 1)
        }.fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
        .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct SegmentView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentView(selectedIndex: 0)
    }
}
