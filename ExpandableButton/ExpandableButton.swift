//
//  ExpandableButton.swift
//  ExpandableButton
//
//  Created by Thomas Prezioso on 10/20/20.
//

import SwiftUI

struct ExpandableButton: View {
    
    @State var isExpanded = false
    
    var body: some View {
        VStack {
            if isExpanded {
                MenuButtons(buttonImage: "camera.fill")
                MenuButtons(buttonImage: "record.circle.fill")
                MenuButtons(buttonImage: "photo")
            }
            
            Button(action: {
                print("Expandable button tapped!!!")
                isExpanded.toggle()
                
            }) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.green)
            }
            
            
        }
        .animation(.spring())
    }
}

struct ExpandableButton_Previews: PreviewProvider {
    static var previews: some View {
        ExpandableButton()
    }
}

//import SwiftUI
//
//struct ExpandableButton: View {
//
//    @State var isExpanded = false
//
//    var body: some View {
//        HStack {
//            Spacer()
//            VStack {
//                Spacer()
//                if isExpanded {
//                    MenuButtons(buttonImage: "camera.fill")
//                    MenuButtons(buttonImage: "record.circle.fill")
//                    MenuButtons(buttonImage: "photo")
//                }
//
//                Button(action: {
//                    print("Expandable button tapped!!!")
//                    isExpanded.toggle()
//
//                }) {
//                    Image(systemName: "plus.circle.fill")
//                        .resizable()
//                        .frame(width: 75, height: 75)
//                        .foregroundColor(.green)
//                }
//            }
//            .animation(.spring())
//        }.padding()
//
//    }
//}
