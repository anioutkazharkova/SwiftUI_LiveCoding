//
//  ContentView.swift
//  declarative-swiftui
//
//  Created by Anna Zharkova on 12.11.2020.
//

import SwiftUI

struct ContentView: View {
    @State var imageName = "avatar"
    @State var name: String = "Екатерина "
    
    var body: some View {
        ScrollView {
        VStack {
            ZStack {
           
                VStack(alignment: .center, spacing: 35, content: {
                    Image(imageName).resizable().frame(width: CGFloat(110), height: CGFloat(110), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text(name).font(Font.bold(Font.system(size: 24))())
                    Spacer()
                })
                VStack {
                HStack(alignment: .top){
                    Button(action: onCloseTap) {
                        Image("close").resizable().frame(width: CGFloat(30), height: CGFloat(30), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }.padding(EdgeInsets(top: CGFloat(20), leading: CGFloat(20), bottom: 0, trailing: 0))
                    Spacer()
                    Button(action: onExit) {
                        Image("exit").resizable().frame(width: CGFloat(30), height: CGFloat(30), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(EdgeInsets(top: CGFloat(20), leading: CGFloat(0), bottom: 0, trailing: 20))
                    }
                }
                Spacer()
                }
            }.fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  maxHeight: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            SegmentView(selectedIndex: 0)
            ZStack {
                ProfileView()
            }
        }
        }
    }
    
    func onCloseTap() {}
    
    func onExit(){}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
