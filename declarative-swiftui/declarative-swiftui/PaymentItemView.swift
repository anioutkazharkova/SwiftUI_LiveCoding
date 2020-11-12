//
//  PaymentItemView.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import SwiftUI

struct PaymentItemView: View {
    @State var item: PaymentItem = PaymentItem(title: "Title", subtitle: "subtitle", description: "some", type: PaymentType.prime)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack {
                Image(item.type == .prime ? "operation_prime": "operation_transaction").padding(EdgeInsets(top: 20, leading: 10, bottom: 20, trailing: 10))
                LargeText(text: item.title)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 20, trailing: 10))
                Spacer()
            }
            Text(item.subtitle).font(Font.system(size: 14))
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            Text(item.description).font(Font.system(size: 14))
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 20, trailing: 10))
        }.background(Color.white).frame(width: 220, height: 150, alignment: .leading).padding(.all)
    }
}

struct PaymentItemView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentItemView()
    }
}
