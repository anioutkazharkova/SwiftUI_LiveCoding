//
//  ProfileView.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import SwiftUI

struct ProfileView: View {
    var data = JsonHelper.shared.loadJson(filename: "data", type: PaymentList.self)?.items ?? [PaymentItem]()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20){
                LargeText(text: "У вас подключено")
                SmallText(text: "Подписки, автоплатежи и сервисы, на которые вы подписались")
            }.padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 20))
            ScrollView(.horizontal) {
            LazyHStack(alignment: .top, spacing: 10) {
                ForEach(data, id:\.self) { (item) in
                       PaymentItemView(item: item)
                   }
            }.background(Color.gray)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
